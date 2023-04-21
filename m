Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7E876EA553
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 09:54:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231511AbjDUHyi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 03:54:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231478AbjDUHye (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 03:54:34 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6168B9022
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:54:06 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-94f4b911570so176093166b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682063645; x=1684655645;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qQTDHxY3+OfXFRoJ5a/+GsFtonll6cxrCx06KzcINrc=;
        b=pEf+67+V340JAx9qEdRrdGbzU7eOm/ClgZszYQbbqw3kdqILRaCywqUKCPCCpQFNnT
         IYI+YJY4CPGWlhTnhpdxgZuiWaGbDLe5Ayjio2CPb+LF36msiZ+WyZwuKENbWh5k+Lao
         Ww7IIentp+02Ar/BdhunVg/3qlhqZIpHVOqDg4KiAie8O5HrDJytTK/2DghOYjWZ+sSn
         DTqPQ+QV80L0ysTKU18+XbCWdgWw/ND286PbkXt7/o1+r9/1Rw6SfOtzKFourWQYwgTM
         lxHpfJr4MC6DhDpU/W7BR8THFa8dy1kNRtn3adteO2Fsp4ON8l2xqXG2s73SHqxrdf+r
         pCOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682063645; x=1684655645;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qQTDHxY3+OfXFRoJ5a/+GsFtonll6cxrCx06KzcINrc=;
        b=Eph4BAFa4jI4/K5VgaZWykIOVzGwVZWgM13KLRRHOjq6wWwWWkOoi/0tgT/8IrTbAp
         RwPojbwVccO/CCIiV631U2//7qQXyk8fVA2XGlKCApZePD/k3oiwbZwGfEyznco+6hy+
         6Hm5kds/LJEX2sjHKi/qLADObiJ14SUKPylOHhQiY6j1codYl3gvcx7F5qcLTSgNvJCa
         jm8xN2r4omsXjugTY4VAdNyEqbdbiU1FtvuFmNT0o31JS59vBENmqLb+iFIhTeYsdidw
         oZiySLYrsJvkhZN4zDE5cfY4jtiseFMvJnGg739wYabifR8ILa4afzB9Q9qqWmXl845o
         yRfQ==
X-Gm-Message-State: AAQBX9ets/Cs0NY64vds3a9SdMiNWbY4JeJ/AN2zjfo57Kt7nDmJKGD0
        BNplmCEJJztmj4zlxwpk8xH6PQ==
X-Google-Smtp-Source: AKy350ZkS1Pk2e+lQ/jDIPIibYgYq7xT0UhKLTyOfaFYL9XNjlfG+ZwpVMxiceJjxWF8G4SVvAb9Kw==
X-Received: by 2002:a17:906:dda:b0:94f:694e:b953 with SMTP id p26-20020a1709060dda00b0094f694eb953mr1214235eji.59.1682063644671;
        Fri, 21 Apr 2023 00:54:04 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:668b:1e57:3caa:4d06? ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id f22-20020a170906c09600b0094f7cc13a69sm1703637ejz.181.2023.04.21.00.54.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 00:54:04 -0700 (PDT)
Message-ID: <64dc4a6d-ae39-479b-f4df-34018a43eae0@linaro.org>
Date:   Fri, 21 Apr 2023 09:54:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v4 1/2] dt-bindings: clock: Add SM8350 VIDEOCC
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Taniya Das <tdas@codeaurora.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230413-topic-lahaina_vidcc-v4-0-86c714a66a81@linaro.org>
 <20230413-topic-lahaina_vidcc-v4-1-86c714a66a81@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230413-topic-lahaina_vidcc-v4-1-86c714a66a81@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2023 19:32, Konrad Dybcio wrote:
> SM8350, like most recent higher-end chips has a separate clock
> controller block just for the Venus IP. Document it.
> 
> The binding was separated as the driver, unlike the earlier ones, doesn't
> expect clock-names to keep it easier to maintain.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

