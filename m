Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D53E6FCCAD
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 19:25:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234979AbjEIRZX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 13:25:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbjEIRZX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 13:25:23 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D4AC2D46
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 10:25:21 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bcb00a4c2so9838377a12.1
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 10:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683653120; x=1686245120;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Em0Tlxs0MLA5e+TD26EWYH4+AdIng+idy64D5M98l8I=;
        b=gpn6j1SbQSfKQb6jx5iCvuNvPv3Ym7oRaSmYNEvVsIwGwOet5lEy1VJGFgmrGIGIxb
         r8aQKa0ff/uq1KJvx7fFEGx2oGmSG+j7mqcEryVvfpimGi5GQZSlZYN0s56NBc3Q5bCz
         5uz12JOWNYFnEBwk4v9uIV4lxCQR9zNh7kXuj+U2u+dNva23kdfKW/bD7ax3ndWAeNmK
         nYuo5+GnpImO1ZD1+gZsv2ZoU8+xNykTKsXoyjdvejT6nEnhkzq1UytPGlNAie/mzpDy
         zhzN3JnDaLQ+V95GOu+RmJLrwck0YU373bwHLQ4E3QGVKuS97Dd8TecAXqsSZH/S9EA+
         hQlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683653120; x=1686245120;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Em0Tlxs0MLA5e+TD26EWYH4+AdIng+idy64D5M98l8I=;
        b=bk2o/ceI0ifTU3avDltA9JSTAmrLes0rA1r9TpG2O9EIYYtddjV2vR53Q6VB5ye/S3
         +av65TRLQzh0jtA7IuZaIj4Exp8tlFy4Ntvg7TadGKy54Nka43ccCx4qDsCwjWRj6Il2
         qUaFetf3iPZ2Xa7jW/UxXpHdjme6R95yvIXIqVqygheBXclUkaXO2lOPCYFNK/HiTT6/
         AGvDv9tIFNpd3bRi/je+kZKIw7lL8/y7DTti1nsiz0nIEkW6Q/pDNCVIuWrS/XysQWgC
         Xg+HXUjt/mS0YvGgxepPzxyKip0VEXK01GHgIiS2N6nmMAIqtQk7uD9e3rDv7hofs3A0
         y5Bw==
X-Gm-Message-State: AC+VfDziC9Jfo8aebMJPT4oiDvMh5XhmxlhsRlAi908Q3vqE1V1kob7H
        nxWFSUY2h2k7U4tZ6CWANXIQhw==
X-Google-Smtp-Source: ACHHUZ7137L7AL+XIMh5eeRUH1cmEK8Mv5X/suJrhcGkTmjpiqQqoAFJpseg+wDmAc66xXYcnPdTuQ==
X-Received: by 2002:a17:906:fd88:b0:965:a72a:b2ae with SMTP id xa8-20020a170906fd8800b00965a72ab2aemr11686758ejb.60.1683653120039;
        Tue, 09 May 2023 10:25:20 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id v9-20020a170906380900b0094e1344ddfdsm1553378ejc.34.2023.05.09.10.25.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 10:25:19 -0700 (PDT)
Message-ID: <0fdc9a5b-d369-8dd3-3f5f-1280ed25150a@linaro.org>
Date:   Tue, 9 May 2023 19:25:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 1/2] dt-bindings: gpio: Convert STMPE GPIO to YAML
 schema
To:     Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Lee Jones <lee@kernel.org>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        Stefan Agner <stefan@agner.ch>, Marek Vasut <marex@denx.de>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-input@vger.kernel.org
References: <20230426-stmpe-dt-bindings-v4-0-36fdd53d9919@linaro.org>
 <20230426-stmpe-dt-bindings-v4-1-36fdd53d9919@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230426-stmpe-dt-bindings-v4-1-36fdd53d9919@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 14:35, Linus Walleij wrote:
> This rewrites the STMPE GPIO bindings to a YAML schema.
> 
> We add the properties that are used in the widely used
> STMPE GPIO device nodes found in the wild, most notably
> interrupt support, so interrupt-cells and
> interrupt-controller is now part of the bindings.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

