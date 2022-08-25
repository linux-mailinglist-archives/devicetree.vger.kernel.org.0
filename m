Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA70C5A0B36
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 10:21:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239645AbiHYIV3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 04:21:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239611AbiHYIV2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 04:21:28 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD4857333F
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 01:21:27 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id d23so22879467lfl.13
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 01:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=Z1nM8n9D4cKIWi39fJN2NwqcjbnvD6EFp1Fh0bxjzc4=;
        b=zKvXhEoMGYI3l852NLhEwpl6HPPN91tW+1ZWbDNNuuno1Ezt7N9mJB/0nb62jn+hHN
         XBfcmH+L03F8muHLoHV4qBW45Ii2Wx2t+3YKlKo97/K6HfEgW1fXiCpRKd/v8ssWsD2u
         dbBmQ6yGYYC7GCfkx4+8i5Kzny1HpVCoNeboGwjTBUUUps6en14nuaf2L+v3ekUWV5at
         9Nc6SzCdXq0c9D+myo7trD1egs/Zbhy2DZYj2r0BsrUo29J+60T8vdh/NijMFItWyfMa
         5tMInURSNqBP2FEqZLxDlYVNNrAXKAEpsdyvCQuRccxD1GyIA3A+Y2GK7bKu6ehuVbZB
         5Kug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Z1nM8n9D4cKIWi39fJN2NwqcjbnvD6EFp1Fh0bxjzc4=;
        b=LOHYbJWGgoAibdr73t0zJ+yashI9epL/Cgsr677S7bNufLiMIppLUOsXqC8m6XtQjF
         WvGI693S88VjpRxv3RcTY45PREKPJHoBLwVdUBmlY32DMZiUmOhT/C4q8jMt3XVfhlwl
         Ad329qGRSbkq+j69yH+on/fVEUDgB03I1HpG4FfGVo/QpSXu8a3iVHeh6BeWiTdv8BhU
         hW885D0DWVDRYCgsMmWaftOrojHofiTcKQyfcQAphNNJ6XxD9MYCLspC769ZsvOGWSB8
         WhHlcgJ4ar+9BTYeiU0Zj5V1jcupigln+Aw9xaTjvFnLTbQ35jOrXB/uFVpRKM81MS2X
         bzcw==
X-Gm-Message-State: ACgBeo3FkuYfNEOEuodjkRT4P1MF2dPuF5elQB+VtZTiE7dEZQsI245D
        Che25ppIF510I8bMWuSKbEqOvg==
X-Google-Smtp-Source: AA6agR6ol+lhYcwHGquYyRD488ENUODevQrg2XnsiwkwKcu1tkCUCDfBrlpUf5Qc+GZRwuny3dwfTQ==
X-Received: by 2002:a05:6512:986:b0:492:eb2c:cd4e with SMTP id w6-20020a056512098600b00492eb2ccd4emr783474lft.222.1661415685418;
        Thu, 25 Aug 2022 01:21:25 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id a1-20020a19ca01000000b0048ceb3836d4sm379293lfg.6.2022.08.25.01.21.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 01:21:24 -0700 (PDT)
Message-ID: <5c183ccd-d582-e47a-0919-76398e523fa5@linaro.org>
Date:   Thu, 25 Aug 2022 11:21:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: power: Add missing
 (unevaluated|additional)Properties on child nodes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Andrey Smirnov <andrew.smirnov@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220823145649.3118479-15-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823145649.3118479-15-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 17:56, Rob Herring wrote:
> In order to ensure only documented properties are present, node schemas
> must have unevaluatedProperties or additionalProperties set to false
> (typically).
> 
> Signed-off-by: Rob Herring <robh@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
