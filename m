Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51BCD526A60
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 21:28:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383740AbiEMT2J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 15:28:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1384028AbiEMT0F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 15:26:05 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E73DA2F005
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 12:25:03 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id n8so8876243plh.1
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 12:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=1GDRx4bp9NuJepXzZIjq8WmZMaXDEcWoMoXohwSlpJs=;
        b=DsO2RagrDbdSqMa+ixtobaPJHzreVzDsV1IId82RRSwj0go9uJ8kvoRQC00oSlOw+3
         ++5QCVOBFgQ03QSkCtXYgRA7r2Tz9+cizHq7hbmIyTl/hVXTc/tLCJtr47rX782/W+9h
         9qSKweBDOX/zlQcxBQY/Bm83C3+LzY1VG7zzY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1GDRx4bp9NuJepXzZIjq8WmZMaXDEcWoMoXohwSlpJs=;
        b=3c+FtIIhYwSJ0YHNpu7A3j/Lr+hQQaRtPi8LUMSuKrZAGO+IaqhHxsRDg1mHgzV8XQ
         DaIdmwHRBHncaZQ7qHF+AF1PJsNhrTaOslQp9NxbfGucFtZAHGtWRaZQ7z6GDU7nB7jX
         fsacWYPA5qClVGff0OgfQ+DNBd6iBNektUUJ1YSWVgrz1NmV8mVAnTT0EFhDVH+erXA3
         niq3HEsqNfge62OE7ekgLGl3HKAyb4SkvnDmdwEBffI3d4Tpa4p1M2+RfPlMg4wUEqOX
         L3B110tBsQ68MwkZx1y4ZndCmWOTy3RqI2D4cBpzQaq6qOE6Tt7OmVfLQU6nvZJgtp0i
         luYA==
X-Gm-Message-State: AOAM533EiMfj6qy6hpa89idyy0ljxZ8yzHHJEQ3k7kietXJUm1vxEcsC
        A2Xkx154IfkXjYKAp13L7riqsw==
X-Google-Smtp-Source: ABdhPJw0J0EYdfOVLq5s0UcpL6lHr1Dg/+ZI2tqQNldwaidiX9nT40d79skQ1omK5TJxowqTNVdSzQ==
X-Received: by 2002:a17:90b:1a8c:b0:1dc:1c62:2c0c with SMTP id ng12-20020a17090b1a8c00b001dc1c622c0cmr17739043pjb.140.1652469903433;
        Fri, 13 May 2022 12:25:03 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:bc87:9632:bcce:8e17])
        by smtp.gmail.com with UTF8SMTPSA id d17-20020a170902aa9100b0015e8d4eb218sm2228413plr.98.2022.05.13.12.25.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 12:25:03 -0700 (PDT)
Date:   Fri, 13 May 2022 12:25:01 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Rob Herring <robh@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Alexandru M Stan <amstan@chromium.org>,
        Julius Werner <jwerner@chromium.org>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] dt-bindings: arm: qcom: Add sc7180 Chromebook
 board bindings
Message-ID: <Yn6wjblZJ81R0Aiv@google.com>
References: <20220513095722.v2.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
 <20220513095722.v2.2.I9804fcd5d6c8552ab25f598dd7a3ea71b15b55f0@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220513095722.v2.2.I9804fcd5d6c8552ab25f598dd7a3ea71b15b55f0@changeid>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 13, 2022 at 09:59:18AM -0700, Douglas Anderson wrote:
> This copy-pastes compatibles from sc7180-based boards from the device
> trees to the yaml file so that `make dtbs_check` will be happy.
> 
> NOTES:
> - I make no attempt to try to share an "item" for all sc7180 based
>   Chromebooks. Because of the revision matching scheme used by the
>   Chromebook bootloader, at times we need a different number of
>   revisions listed.
> - Some of the odd entries in here (like google,homestar-rev23 or the
>   fact that "Google Lazor Limozeen without Touchscreen" changed from
>   sku5 to sku6) are not typos but simply reflect reality.
> - Many revisions of boards here never actually went to consumers, but
>   they are still in use within various companies that were involved in
>   Chromebook development. Since Chromebooks are developed with an
>   "upstream first" methodology, having these revisions supported with
>   upstream Linux is important. Making it easy for Chromebooks to be
>   developed with an "upstream first" methodology is valuable to the
>   upstream community because it improves the quality of upstream and
>   gets Chromebooks supported with vanilla upstream faster.
> 
> This patch also adds a link to the Chromebook boot flow documentation
> to explain that Chromebooks don't use the scheme described for the
> Qualcomm bootloader.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
