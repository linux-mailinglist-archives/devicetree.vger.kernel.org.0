Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 084B7564401
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:18:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232449AbiGCD6W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:58:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232117AbiGCD5h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:57:37 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0B16B855
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:23 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id s13-20020a0568301e0d00b00616ad12fee7so5072788otr.10
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Pacf1UOvQs76t6aByYKhRrOtJSG/fFrzkb000yR8bmo=;
        b=c34IaB0Qy33oT2TUDVRwF8d6clpbbOTmqzRRzXFhlee6tquRoHGCzRnCM6Rc/STmwr
         YlBF92VXhVpB7AIYQQRDwoXhWPIJI+89JuTpD9PSOzF+PIWubEfxdOrhI0pjYe2WrhkD
         s5P/LjmGT0/3YdVkflgIgEcT6AzvGtFbFeN2GtvF/ph6mMIKnO8DZKgIxXK8evzASrIh
         788rlyv3lxKw+/fVMNluEMw7KO/fGSEPp26X6qlwnIRapaKMtgL8XmXpmLY1v9ZS8Gdw
         AigiozgKlpH4Hk2tlLwJAh+lD73C+rwiFCpv9kiXW/hRW2EfdMCR15QBTqQSLSDdnsIu
         U4tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Pacf1UOvQs76t6aByYKhRrOtJSG/fFrzkb000yR8bmo=;
        b=nlfct7XccEXsCXpXTPS9By82H3visLO8alt+rcmPrJ+C6+d2plfAsW3HpmNY5dr9Am
         FbDRO3ufdBXOqV8mb9GkN8f3BfZ49iJlZ1EQ/F3qw/C/v3g5rym5/oUNOt8SCnt2aXhF
         cEvHeWjgp2tcV5NwPWH8C/gbAC0HpnMmQ52m0qSic0HwAOdn38pcvdOqpIr9fYdjUVcl
         bk+P8zdoVQtQOwsOVs8F46x26EFfJEsYghMyOXRYS8ivmX6bud5u7AWUmAfVtY7xF2gl
         VpoD25DAvCkKZ04q0l0/QlY0XzWz0XEN22N8unkv3gMHFt2yBnZW9+azGH61Fo12TUoL
         ZGDQ==
X-Gm-Message-State: AJIora9rVjl1SwLbP31Np44TtBftc0kDSTax3xQlPRYPc222TMl+6NNt
        eNX4ugB32EawDPLsu7E/KbzG7A==
X-Google-Smtp-Source: AGRyM1uRh6HZG1GQ7ZMsmm8SUDod2Vs/Uw1rBIee0Fdg1gJLNYEizbwivlyhQupLYRIxv5I41t9H4w==
X-Received: by 2002:a05:6830:d0d:b0:616:99da:1fb0 with SMTP id bu13-20020a0568300d0d00b0061699da1fb0mr9663014otb.109.1656820643140;
        Sat, 02 Jul 2022 20:57:23 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:22 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 12/12] arm64: dts: qcom: msm8998-mtp: correct board compatible
Date:   Sat,  2 Jul 2022 22:56:19 -0500
Message-Id: <165682055968.445910.6075951122172128588.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220521164550.91115-12-krzysztof.kozlowski@linaro.org>
References: <20220521164550.91115-1-krzysztof.kozlowski@linaro.org> <20220521164550.91115-12-krzysztof.kozlowski@linaro.org>
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

On Sat, 21 May 2022 18:45:50 +0200, Krzysztof Kozlowski wrote:
> Add qcom,msm8998 SoC fallback to the board compatible.
> 
> 

Applied, thanks!

[12/12] arm64: dts: qcom: msm8998-mtp: correct board compatible
        commit: 6dfe4e195271a59f396d414c5fae299eefa5d3da

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
