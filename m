Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CBA96CCD75
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 00:38:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229866AbjC1Wia (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 18:38:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229796AbjC1WiX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 18:38:23 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79FD02D7F
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 15:38:13 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id t14so14194192ljd.5
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 15:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680043092;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2giLkDrmf+/kS5P0IwHTfvbcUznWvWbpf5OjTRcuNpk=;
        b=a29iHMs3Hnbhc3OZ1JQZ+nRgd5NjHoBwJRWvVpY1DiAF3FeY4VWiTBsgqlR8u89HHq
         HsM6jLxvXIKiFiTq+tdJnbRNwlMOm0TFLsqsWRYbbGOLRfZU/lrh9dXLC/mmtTCzR/vy
         arzHUUDiyJcwSc0ta9gGOvzY+cmTyPwev50+t+DQR8y3n64veGb8kafgnphj3zu3wGwW
         bQhh2midZaE9FeYHQel0dBWaZU6QSmZwnD2O0kgxYurO8lrYuua7vbpv2BfEube5IFlN
         OTK+xB+Z/4ZZtCCysoB04Egz2zz9SFZABNADu8pvwweUjCDJ8lFk00GmkPsWm9shrNio
         dmXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680043092;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2giLkDrmf+/kS5P0IwHTfvbcUznWvWbpf5OjTRcuNpk=;
        b=aJgsETSmHekNSx8XUzKt1IgB69n8Sck+SsSrqCIvhDCEOGyNIytzDPhOsiTzfosxjF
         u+GPiPI0a0ylEXJl14ipf/HVdUx4RX6YOZ2Fh60akiP7hYe8tcxXzsv6fIY4Eos5TRes
         0fNa7bgWw58FyjZLyy3R6/tBdkRen63Nl3pL476Yidq+74gj35/aKahWSlns5IUNAwz/
         4d7m+7m4IjUlqN/IJSERJdDc7jlcWI+QGHf8mCgZU9hrNEFytTI6xpt+8dRPjJ6sQ1D6
         6JPZ3MrUg5Q2ZVqCCjGIN6o0TIeju6n7gaJFiqjbi796UzRjo2YI1wI5kGBS+CdiZd5t
         E3Jg==
X-Gm-Message-State: AAQBX9e9MzHWL6faOOz2y3aPP4pm7cYnSA0qBUwFABy6omN9+KgBynge
        fbdiSNnV+Sg/XrdrAUct7lSw4i7rKABasQnxyTM=
X-Google-Smtp-Source: AKy350ZuT+dg/CToqXJq0PLw9mvrnrKKusC4KJ2+fUBG12SiPygnK8UFv3lgFjNzEBx+vxp7CVFxGg==
X-Received: by 2002:a2e:3e18:0:b0:2a2:41cc:fb1 with SMTP id l24-20020a2e3e18000000b002a241cc0fb1mr74651lja.12.1680043091825;
        Tue, 28 Mar 2023 15:38:11 -0700 (PDT)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id t22-20020a2e9d16000000b002934d555783sm5199522lji.6.2023.03.28.15.38.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 15:38:11 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v6 0/5] arm64: dts: qcom: add DP Controller to SM8350 & SM8450 DTS
Date:   Wed, 29 Mar 2023 01:37:57 +0300
Message-Id: <168004255465.1060915.7804485364271836960.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230206-topic-sm8450-upstream-dp-controller-v6-0-d78313cbc41d@linaro.org>
References: <20230206-topic-sm8450-upstream-dp-controller-v6-0-d78313cbc41d@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 17 Mar 2023 16:06:31 +0100, Neil Armstrong wrote:
> Switch the QMP PHY to the newly documented USB3/DP Combo PHY
> bindings at [1] and add the DP controller nodes.
> 
> The DP output is shared with the USB3 SuperSpeed lanes and is
> usually connected to an USB-C port which Altmode is controlled
> by the PMIC Glink infrastructure in discution at [1] & [2].
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: display: msm: dp-controller: document SM8450 compatible
      https://gitlab.freedesktop.org/lumag/msm/-/commit/8554420f1912

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
