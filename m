Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AF4C1D592D
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 20:39:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726248AbgEOSjc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 May 2020 14:39:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726558AbgEOSj3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 May 2020 14:39:29 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3A95C061A0C
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 11:39:28 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id u35so1389042pgk.6
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 11:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=phaOl4UmRtsq7El/zXDiXXLmxp5U/M6vGOmuvPTWkEw=;
        b=XsNVU5IShN9fJKPkoBVuH+Y35AROQc4c4/lXaeXGlGS94mJJcFgEnq1I5NwLej/D/J
         o8cLPSHHchNGnwn6sT6S7OWZlGdC1O5VdQ3NCw4NrrEyCMDodE2BLoQ1px5PTXhTDzKN
         4iDIb8k0OE1A4S7K0K1zWbBp4Smr2GqOlkhj4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=phaOl4UmRtsq7El/zXDiXXLmxp5U/M6vGOmuvPTWkEw=;
        b=U4Ds4AOlWvLUO+qUHzImnu2YFw8OZyvDuhglHXJ30eYMzWH8SsU7pzC6lXf17wQDMP
         ygh37cqYRkCyVsLVCX8Wsee916lXlIRmu0KlK2yrhsaxgHCFr1nwr41aR+UQsGzwNy5x
         u8C+qFoEG84iV3i4Ri2IP6estIR4pPrv2z7Nu+4jW7mziWV941USyZhynXy27vEIbbKP
         lugahP51Tne2kaIXxY65sFK31f16Ew12kg+vNnnhwywKeDlL/TjuoT6MBOjgfIWUxkMh
         wOS6XXCKiOcW2+XTvBPUN4uqLWND0B+SS4UTPKaXgIN1cYotP7X4kaZhI/1R91vs15Lb
         q18A==
X-Gm-Message-State: AOAM533tN6HziFJgb0xmrE+SwLb6xrOgCMxn6yEgt9PzXRiL/5/8Z3CL
        exPX59V9hAJOw/sPbCAYyrvKow==
X-Google-Smtp-Source: ABdhPJzoos6SroEbTwNgchhW8pq9WTD4Qe0ecUkShREHdGCuNK6bU3WSbJHL54SN3cHNcpk6GH5a2Q==
X-Received: by 2002:a63:3449:: with SMTP id b70mr4570122pga.289.1589567968230;
        Fri, 15 May 2020 11:39:28 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
        by smtp.gmail.com with ESMTPSA id j35sm2232570pgl.74.2020.05.15.11.39.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 11:39:27 -0700 (PDT)
Date:   Fri, 15 May 2020 11:39:26 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Sandeep Maheswaram <sanm@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Manu Gautam <mgautam@codeaurora.org>
Subject: Re: [PATCH v7 2/4] dt-bindings: phy: qcom,qmp-usb3-dp: Add dt
 bindings for USB3 DP PHY
Message-ID: <20200515183926.GZ4525@google.com>
References: <1589510358-3865-1-git-send-email-sanm@codeaurora.org>
 <1589510358-3865-3-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1589510358-3865-3-git-send-email-sanm@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 15, 2020 at 08:09:16AM +0530, Sandeep Maheswaram wrote:

> Subject: dt-bindings: phy: qcom,qmp-usb3-dp: Add dt bindings for USB3 DP PHY

The subject is misleading, this patch doesn't add the binding for the USB3 DP
PHY, but factors it out.
