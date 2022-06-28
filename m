Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9772A55EF71
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 22:24:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbiF1UWD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 16:22:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232194AbiF1UVg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 16:21:36 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A63B3D1CF
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:30 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id q11so18702039oih.10
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=N0YiwTB5Lzrx5Idx6QrshGkTc9HqjV5relJPYoRStTk=;
        b=g/3vrQcchq4kooUu20T9KbQIxXKpLeQOijcueNHFCafx+EJyK3+54EwZDipg54Nx6G
         VU5gvK8p2FpcvT/uape/TLThvTEJkzEGpD/RYa699UxO0MueLXXMtpNKffkII+uvHsPG
         Sd0sEg+/AXu9TN4Di3xmJIf57O6imnMViYGCU3ImRv8m5EWqb81gkNRvR5AOi195BD6s
         feYOjaQAk+uNkBTCFNAZo2GIl9keI31UfE/lRzhMhVVCXrBIQhSFoYqdXQ80cGSI4Jo2
         Co3E5XRKJ3wCD8nv29EyW5NfialfZxZ6UUMdSe/Sn7ScucuhvixhOABwbqr+bIBSLYFf
         s+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N0YiwTB5Lzrx5Idx6QrshGkTc9HqjV5relJPYoRStTk=;
        b=yxoSJucM4Bs9LYnnatY1wWumC21/9V77pluTM/Kj7JYUsgJrZgLu+M33uEHs9Wxi4y
         VdFNTeAzAsV/W/xoIfmO83MuKvDAoRET1bEnQyHKqFE4nnJx8h7wMAgX27ADpVrxS7BV
         yjF+cp/DYxoSvgiSwtdaC78XhLtUm5/gsaPh/waN99jgjZHv1P1iAEthSwCN9pbuvoDE
         LqOp28tKrE6Q59XCWL5S52sYeEESCMBa9ti1CwKvsVOHoRfhluo+/UXnH1LJg0555Fd6
         yvcTCG3piC44eCgIvXp7A4RKdBN2ENRxyAutGa9Kjs9nPLfalMRwm3p9wQlvttQxlv2Q
         8Jrw==
X-Gm-Message-State: AJIora8m8uJmgwM+wuuJeA5P03cn1cYCYSakolmjjWTY1m3t3/Of69k/
        6RBfw3q5fcO4t8YJ9ue2dFbldjWbz7AFhw==
X-Google-Smtp-Source: AGRyM1sayXBpFlqlsyzHRDsKb9iKdp5I9/c1DrxmlcZOsE7L1zswG61hqMQPBubjaor3cm3c4bSMYQ==
X-Received: by 2002:a05:6808:f94:b0:32f:6378:d8b5 with SMTP id o20-20020a0568080f9400b0032f6378d8b5mr917133oiw.171.1656447570030;
        Tue, 28 Jun 2022 13:19:30 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a12-20020a056870d60c00b000f30837129esm9536923oaq.55.2022.06.28.13.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 13:19:29 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Todor Tomov <todor.too@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-media@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Del Regno <angelogioacchino.delregno@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Foss <robert.foss@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: (subset) [PATCH 1/4] media: dt-bindings: qcom,sdm660-camss: document interconnects
Date:   Tue, 28 Jun 2022 15:19:01 -0500
Message-Id: <165644753308.10525.1413224152892133110.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220509144714.144154-1-krzysztof.kozlowski@linaro.org>
References: <20220509144714.144154-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 9 May 2022 16:47:11 +0200, Krzysztof Kozlowski wrote:
> Document the interconnect properties used in the Qualcomm CAMSS on
> SDM660:
> 
>   sdm630-sony-xperia-nile-discovery.dtb: camss@ca00000: 'interconnect-names', 'interconnects' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> 

Applied, thanks!

[2/4] arm64: dts: qcom: sdm630: order clocks according to bindings
      commit: e8881372ccc6ff5a86bddeb4ebc248ff892d2ffc
[3/4] arm64: dts: qcom: sdm630: order regs according to bindings
      commit: 7908dcc8be2db90c9d9bbcbd5fb021f935b76b26
[4/4] arm64: dts: qcom: sdm630: order interrupts according to bindings
      commit: cb0b68537713208824af74f2b1dbae22e8e52f82

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
