Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B812367D4D7
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 20:01:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230163AbjAZTBQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 14:01:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232301AbjAZTBO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 14:01:14 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EA934741F
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 11:01:13 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id m2so7224658ejb.8
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 11:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7+QaWTie8mUd4SkzRTgoE5j5+1M04llz8djdt6Ao+5U=;
        b=bBGz5unnYPdK2er6RLtN6VmuEhsYY/ZzZ3AjpaNcLUg1pEGJXndCcNpNKulFBJT1pA
         iKuvWo1xANnbvgNhFiAZcC25fnXeWhNwa/kKOgxoH5f9NkLYLFJC8gn1RowWA1TH/u0F
         ksne6TDVJf6fSqcMDiHOf9olhN2DRKTGCnrqhzA4J25Wf8vQPkm7Gs0n8Y/yZ09oKOfW
         TSkgghSRaR949pvHL5okjcAMd0zjEWJeQn9NjMKDQ006Zd9t22VuBMWDvGvT6nE5CvTJ
         yUjGEfL0MplDBkR0B/+RNLEha9S7IbMjB4o274N/6kvUSaehmvQzR1gvpACLkTWV1efm
         lQPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7+QaWTie8mUd4SkzRTgoE5j5+1M04llz8djdt6Ao+5U=;
        b=Ds59yukGdUJkQU1eYOoNE80GvZ/uK3urCFHin8eZpLk9WOsz+REJI9ed2vnyOUknX3
         E/I880J0XH5X3RwxVePsOIDLu9K7Y4h0WOhhFjmbe5jo1RMlyZNNaRVLZpuEAbMpUgvI
         Be7rI0NGVMFUTGpLwn2AaRHURwoCqwi/EIjpYO0rEi5KLatXnTQ6+DL/7eofGvxg5rmb
         qwZS+/mwjwP2JSq5lznVp6AzjeQByK2qbWf/+Ss/qRL49mzpwiBnd7GiHh4mrmfLxCg2
         IRjGg9+2oLsXGendEghAktIPTQMjwETilFsA5h41zKrAIN0hsNMRwyZAjGMLQkkxmkpV
         YkSg==
X-Gm-Message-State: AFqh2kq0PoGdIeBV1B7hWGkoMsaL1lUhNL+I/nv0UCYoNHr6DYHxrO6n
        HoetU9w80oe3xdguqwuXA8aBAQ==
X-Google-Smtp-Source: AMrXdXs4I0OTW36HZKfzhHmWjGW5zXT480w7xSGDhvznva1jtZs3H2u9vxa9fJgqoAMH/5OuphyhlA==
X-Received: by 2002:a17:907:a702:b0:877:95bf:cff3 with SMTP id vw2-20020a170907a70200b0087795bfcff3mr30234148ejc.77.1674759671678;
        Thu, 26 Jan 2023 11:01:11 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id o25-20020a1709061b1900b0084d4e9a13cbsm974982ejg.221.2023.01.26.11.01.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 11:01:11 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: Re: [PATCH 0/6] drm/msm/hdmi: integrate msm8960 HDMI PHY with DT clocks infrastructure
Date:   Thu, 26 Jan 2023 21:00:55 +0200
Message-Id: <167475959086.3954305.3794482888936881382.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230119132219.2479775-1-dmitry.baryshkov@linaro.org>
References: <20230119132219.2479775-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu, 19 Jan 2023 15:22:13 +0200, Dmitry Baryshkov wrote:
> Make msm8960's HDMI PHY accept clocks from DT and also register it as a
> DT clock provider.
> 
> Dmitry Baryshkov (6):
>   dt-bindings: phy: qcom,hdmi-phy-other: use pxo clock
>   dt-bindings: phy: qcom,hdmi-phy-other: mark it as clock provider
>   drm/msm/hdmi: switch hdmi_pll_8960 to use parent_data
>   drm/msm/hdmi: make hdmi_phy_8960 OF clk provider
>   ARM: dts: qcom: apq8064: add #clock-cells to the HDMI PHY node
>   ARM: dts: qcom: apq8064: use hdmi_phy for the MMCC's hdmipll clock
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom,hdmi-phy-other: use pxo clock
      https://gitlab.freedesktop.org/lumag/msm/-/commit/56a80fe57691
[2/6] dt-bindings: phy: qcom,hdmi-phy-other: mark it as clock provider
      https://gitlab.freedesktop.org/lumag/msm/-/commit/a0abe758ccc4
[3/6] drm/msm/hdmi: switch hdmi_pll_8960 to use parent_data
      https://gitlab.freedesktop.org/lumag/msm/-/commit/71e8a4509c8d
[4/6] drm/msm/hdmi: make hdmi_phy_8960 OF clk provider
      https://gitlab.freedesktop.org/lumag/msm/-/commit/4f62d9764273

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
