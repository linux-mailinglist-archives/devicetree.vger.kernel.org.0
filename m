Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3631560190A
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 22:12:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231297AbiJQUMH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 16:12:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231225AbiJQULi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 16:11:38 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A13DB748DF
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:10:32 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id j21so7384058qkk.9
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dimKLI2qKjWwV75hr8dYm93XmJVv6ru0b43DYF3f1IY=;
        b=lRm/vM+Nkfxd6Kcp5c0oghTsSV9s/U4+tpm7pkv5nmQsLIzBqa3TR0kHon3EircuL1
         O+nPcDuWyMPPX20e6Z4mB/i9WjJJvOIxNY0AtkVKTX4BLYaopEFzFH8B3OkW/Cf4lV6e
         QGrDbChwjgMCIdGlqCNOu9C/zat8XlmTfpK/okYVxvtmTdyZ8owm2lDoihRN/VP5BXzE
         jacDKT9jInxutQxapV4TGTAkJ7sZ03pxaLwNVSLjZIOiS0Z2V2WaAHozVa3tk+sHVRNd
         +cs9O0S4IABb/zsJ7WSSoGdMTGuGChnj3zvF67cubkPONyUVSwDv3o3fqrbeUzCpSlV9
         1GiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dimKLI2qKjWwV75hr8dYm93XmJVv6ru0b43DYF3f1IY=;
        b=QZxpnVTHTkexo/Z2aZwJBoQkJAri9muIcaG8f9BgtHl2V7PR6RCYI7Ngm2WDb6ZKgZ
         CbrWcZLFL+1sVIMxC6Pgwm23thXCLAf8T+E9nsOcjQgs2cuVn+K7avcpCIoBoA7WY4nd
         bnvWqMg5HwhT8UlFnNoIafCemUxI07wlBk7BjYeYfHGzqRjsEQnSzpG085ls356khY60
         3LT1JbTNng7s5KOcPmG7Rp/4euRG8fe3YhQ3rrcYUkHdD8A547mKpKQteQue7bIdE2ge
         u1nE3/bdBbbHcHkGQhoQNAF34UaGQ+NtQxsaSRHN0tg+/OnRzWI+O+M6/op4+eostMT9
         EIqg==
X-Gm-Message-State: ACrzQf1CrAxKODeRBahuY5Ryk6EDxZlui36D4Le7PuQlivH6RoNFSBPh
        TyPEz3Y6XOyVEaf1MbOLindBCw==
X-Google-Smtp-Source: AMsMyM4MJGRSS4PtC6wnOefiE2BkrMc90TLVJ23FkzdE0IzOQB+/89EUcb4ZTHPtOK5cVgLKhiralg==
X-Received: by 2002:a05:620a:891:b0:6ee:a929:7427 with SMTP id b17-20020a05620a089100b006eea9297427mr8820614qka.53.1666037368316;
        Mon, 17 Oct 2022 13:09:28 -0700 (PDT)
Received: from localhost.localdomain (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id m13-20020a05620a24cd00b006ce76811a07sm536793qkn.75.2022.10.17.13.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 13:09:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawn.guo@linaro.org>, linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v5 29/34] dt-bindings: pinctrl: qcom,sdx55: use common TLMM schema
Date:   Mon, 17 Oct 2022 16:08:10 -0400
Message-Id: <166603728602.4991.16161457775238509078.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221016170035.35014-30-krzysztof.kozlowski@linaro.org>
References: <20221016170035.35014-1-krzysztof.kozlowski@linaro.org> <20221016170035.35014-30-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 16 Oct 2022 13:00:30 -0400, Krzysztof Kozlowski wrote:
> Reference common Qualcomm TLMM pin controller schema, to bring common
> properties, other pinctrl schemas and additional checks, like function
> required only for GPIOs.
> 
> 

Applied, thanks!

[29/34] dt-bindings: pinctrl: qcom,sdx55: use common TLMM schema
        https://git.kernel.org/krzk/linux-dt/c/fd583a4f6db479a8e3f4ed3390b1cc3c258ace63

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
