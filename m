Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D384564437
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231574AbiGCD54 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:57:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231922AbiGCD52 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:57:28 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D587FB7E4
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:20 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 73-20020a9d084f000000b00616b04c7656so5096297oty.3
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=5rnQK0GUcvVPxrDDSgK2p/s7lZIIHCaW7b06xKldlno=;
        b=DYTi7m5qLnMo5JlRJNelUIRaprIjr0NGrNENP5nD+6D3i7HG7mc64fRRFp5O3tk6AP
         WjXiJ+QFY37bSTblv3KMMVBrQ/CaqHPXyohPTEeOyx1TqnI9cv3sjYCUDmgq8FOiqqDS
         LvMaJOEiPr2wgxcNDVGPaM21EOBbq+YC8aTsBup6TcNWAaTwMeLA/gk9OR6/00Ax+yXc
         kN2m/lQfxCWlYOwhrOwrTVV3op9oW+GaZS3bVtX5A7jS80Gu7YvHGJwWhQjOtK+AwJ0d
         cx401bqo3um7ws3XnIRY36vH4S/G5IoCcnKd5fco4ZIq668754VthxmJAX73ctvfSSkl
         vKFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5rnQK0GUcvVPxrDDSgK2p/s7lZIIHCaW7b06xKldlno=;
        b=G3E2w8dKcWWmvXjUbDBxjK5/yP61HpyWjakXUxqNqmDD67zajXA30fSOutn2tlmZOj
         GMCW1EjvPYbFBlc8GfW7SJwcCoFoC+d/c9KyoavMDpUAF3ZPokTboKt3IvhPPrELCWpX
         PvSv5Kgc7C26b9QM3DucZpU+XG4q5J+BOHfrxeHEybV4mTZVFNrb3TYva/K2Hx5ExxpN
         /Z/b2zfS4j4OMCDAMIHbpn+OLTLTs60KV3bCvfrO7niDgDpL0kwT4yyPyMrnWwMNH/6o
         EV04DvtWodHspimc+QMDbwBQzb1o5R77V5mcFz+1VKGU6kaW2A8lah4yKj2pEm77XqLJ
         /JCw==
X-Gm-Message-State: AJIora/JHeUN7DHLTtugCNGUHO78D06SsQyy79uXkT7Yv32fUVnayEVr
        WjQh4xS0gPYsnMjFXNFZ06WtNA==
X-Google-Smtp-Source: AGRyM1tle5VkdfKXJcTNzEcDT1yUEPrXg0Un5vQpHczTx94kjQFetSIREWoCva9PJLAtPXumXsV7FA==
X-Received: by 2002:a05:6830:b88:b0:616:8e13:9b7b with SMTP id a8-20020a0568300b8800b006168e139b7bmr9709557otv.186.1656820640060;
        Sat, 02 Jul 2022 20:57:20 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:19 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 01/12] dt-bindings: vendor-prefixes: add Shift GmbH
Date:   Sat,  2 Jul 2022 22:56:16 -0500
Message-Id: <165682055968.445910.11720677894856934867.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220521164550.91115-1-krzysztof.kozlowski@linaro.org>
References: <20220521164550.91115-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 21 May 2022 18:45:39 +0200, Krzysztof Kozlowski wrote:
> Add prefix for SHIFT GmbH, phone manufacturer
> (https://www.shiftphones.com/en/).
> 
> 

Applied, thanks!

[10/12] ARM: dts: qcom: ipq4019: fix Micron SPI NOR compatible
        commit: 7afef282d7453ded3b31f71771a31b34dda51aff

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
