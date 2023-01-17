Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5391466E4FB
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 18:33:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232629AbjAQRdD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 12:33:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235083AbjAQR2R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 12:28:17 -0500
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71B154901C
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:27:02 -0800 (PST)
Received: by mail-il1-x12a.google.com with SMTP id d10so15703478ilc.12
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:27:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yNUDy6KyAQAbRWnSnSUxNJKiFT2fKondnpix9cjKDOY=;
        b=cJZHosGPywZrxxX0ZyqnueVZV3CFoZWMJXBY4yIkikJ5l8RAywicsO+rC7HzgCbYMS
         YiGVtYUp1NwsmlRbeWTwmH9Mg1FtPjxhuewZl6aehZEhaItlxYM97xvvv1L1XTEEGcf8
         GBJQ6gO6tPulme1tBA4Ab8cHC1SILZqFqcPzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yNUDy6KyAQAbRWnSnSUxNJKiFT2fKondnpix9cjKDOY=;
        b=cuHoxD7fSM7l5lqnXPaduF4bdO/ZOY1bo3YVE9zaZupn/0aMOUZT6454B87tnS7dvO
         QPph62cFBlcmWBoW1b9gJv6JpHUstAAtsdhERztYcXZEhCexWjC74Fk53Bed0e5C2i4W
         p+3bEsZCZqhFGmkr8ijj4IJdtB5fsVS9HnVNZCsvEymEwh8VuufjpSkcZRLiTtBIyg+X
         n1aIo96MJYhL7uABXsgYRFsUZasKMpDsulbn0c+4Wuupya5xKnWNjtXa0G7L0+i7p5my
         OkZ3JgONo2feK71N3GMVIW7sjk43cnFF319QVqO/ChFuAoaKQ1Mc6EFAh2hKfPvDO18i
         fVQA==
X-Gm-Message-State: AFqh2krleRh983HcFhyB737amvJRHHevv0D+d4rCp0jZelWjohEzDrsq
        EEETo0NGp0ham/LlCS92XVsE5A==
X-Google-Smtp-Source: AMrXdXulPcxFsVsyjyaJO/ymO6SL8ctVeJej39K1uFvkJaYf58YF6v4liYIPvKPOSVjRuSAyB8wPFw==
X-Received: by 2002:a05:6e02:1a45:b0:302:392c:5878 with SMTP id u5-20020a056e021a4500b00302392c5878mr4409722ilv.13.1673976422085;
        Tue, 17 Jan 2023 09:27:02 -0800 (PST)
Received: from localhost (30.23.70.34.bc.googleusercontent.com. [34.70.23.30])
        by smtp.gmail.com with UTF8SMTPSA id y9-20020a027309000000b0039e5cad0bebsm5703351jab.89.2023.01.17.09.27.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 09:27:01 -0800 (PST)
Date:   Tue, 17 Jan 2023 17:27:01 +0000
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rajendra Nayak <quic_rjendra@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sc7280: Add cpu and llcc BWMON
 (=> interconnect issue)
Message-ID: <Y8baZWlKB9vNGYJw@google.com>
References: <20220902043511.17130-1-quic_rjendra@quicinc.com>
 <20220902043511.17130-5-quic_rjendra@quicinc.com>
 <Y8Ggh6RObbB1cxSS@google.com>
 <dc5487d8-d31e-28c6-07e8-8d1ff54a4ba4@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <dc5487d8-d31e-28c6-07e8-8d1ff54a4ba4@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 15, 2023 at 04:13:40PM +0100, Krzysztof Kozlowski wrote:
> On 13/01/2023 19:18, Matthias Kaehlcke wrote:
> > Hi,
> > 
> > On Fri, Sep 02, 2022 at 10:05:11AM +0530, Rajendra Nayak wrote:
> >> Add cpu and llcc BWMON nodes and their corresponding
> >> OPP tables for sc7280 SoC.
> >>
> >> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> >> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > 
> > I found that with a v6.1 kernel AOSS on sc7280 doesn't reach it's low
> > power state during system. This can be observed on herobrine based
> > boards on which the AP_SUSPEND signal should transition to 1 during
> > system suspend. If it doesn't the Embedded Controller (EC) notices
> > it and wakes the system up again.
> > 
> > Bisection points to this patch, the issue only occurs when
> > CONFIG_QCOM_ICC_BWMON is *not* set. One might think the patch shouldn't
> > have any impact at all when the driver is not enabled, but it does.
> > 
> > Debugging shows that the issue is interconnect related. A bare platform
> > device is created for each bwmon devices, which results in the average
> > and peak bandwidth of the interconnect link to be set 'initially' to
> > INT_MAX. The driver is supposed to call icc_sync_state() during probe,
> 
> This is for interconnect providers, not consumers.

Ah, thanks for the clarification.

Still, for the INT_MAX bandwidth setting remains in place unless the device
is probed.

> > which would set the initially bandwidths to 0 and determine the actually
> > needed bandwidth. But since the driver isn't probed the initial
> > bandwidths stay at INT_MAX.
> > 
> > This isn't actually an issue with this patch, but how the interconnect
> > framework deals with devices that are registered on the bus, but aren't
> > probed (yet). Not sure how this would be best fixed. Georgi, do you have
> > any ideas?
> 
> Why the device is not probed (yet)? If it is registered, it will come
> soon during boot up.

Because CONFIG_QCOM_ICC_BWMON is not enabled for the board in question (see
above). It could be enabled as a short term mitigtion, however we shouldn't
require drivers to be enabled just because the DT has a corresponding node.
