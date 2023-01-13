Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77EAA668913
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 02:25:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240363AbjAMBZG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 20:25:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239998AbjAMBZF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 20:25:05 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5732A5D6BE
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 17:25:04 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 18so29261915edw.7
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 17:25:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FkSGzKLP31foCEIfqBMrPQ+sr4Ss2mq0m00vv8lVFP8=;
        b=Uj84m7aLrzQ2vmYs3MiN9Hy6+b8j8fwkMA4nmGCaAzzO2tVviAEJpU47YOkZUearEY
         U3NUboGAIGBmKOsW9VbuFMVhaPNfdmRS2bhwRiloRxAD+MXxwyjEDgvSOgYzyOTcD+A5
         e7bWCkCPvx+r81e9Spi4f4DhscTecLVR6+8XA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FkSGzKLP31foCEIfqBMrPQ+sr4Ss2mq0m00vv8lVFP8=;
        b=Y0Z1dD2TWBF7gZdeMKxgHhZg20m+4yD+hj4Gn47kfsTsCiHIsi+oN2ZCE9LkC6roY8
         qV3ITbWVF/wMDtZuZe5nLr2doiIKS2p98Hc8+tsRJRGUN5Lf3HXkuETKCbdP9GpNbYsR
         j7bhwhmBuRDa98nY374MXGO03X5K5tXCK7yaLtHRgO7pkQnd0CoFuWQosaJRu+gE8K7Q
         +0lCNxBvCa0UwH12SV/rMxTkYEG75t7DbH06LAtJ+PKim2Cq2MwC7KhAVXDf/O3osIXr
         OkdZ634oRHHV+VGq5RIiDdOkEAWBjHaxDTSXnr4jCrqcf+53+cx8VteacGBmZBx9HVV4
         M37w==
X-Gm-Message-State: AFqh2krp43PVI97kEZ8zAJ/JpZDHogvJwg8XH8X/Qz6YVLlxCI5k0hWw
        taKdNoR9wSj3puOLusSi2c/lfYwMrxDOsK+tR1OYqg==
X-Google-Smtp-Source: AMrXdXt9YPqmODUWTW0ZOAI7HpYX/Eqsg4YByz9C+W6v+fCAoybeZvOmsBLH3dYxnAshGkwgdlDFznEh4n6rckabBPc=
X-Received: by 2002:a05:6402:1c99:b0:49b:53a8:4b9d with SMTP id
 cy25-20020a0564021c9900b0049b53a84b9dmr628021edb.323.1673573102966; Thu, 12
 Jan 2023 17:25:02 -0800 (PST)
MIME-Version: 1.0
References: <20221221071734.2887901-1-judyhsiao@chromium.org> <afd7851b-0846-c21f-a769-10fb920c7c80@linaro.org>
In-Reply-To: <afd7851b-0846-c21f-a769-10fb920c7c80@linaro.org>
From:   Judy Hsiao <judyhsiao@chromium.org>
Date:   Fri, 13 Jan 2023 09:24:51 +0800
Message-ID: <CAJXt+b8eez8KTocoAi0WP8qC3YdA9bfOTPbY8ZGfXNb-MNaT-Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: add display port audio
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Why do you change link@1 from DP to ALC?
Because I want make the order to be consistent with the 3 mic version. Thanks!
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-rt5682-3mic.dtsi
>
> Best regards,
> Krzysztof
>
