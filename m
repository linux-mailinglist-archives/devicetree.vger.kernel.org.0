Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03DC4371EB0
	for <lists+devicetree@lfdr.de>; Mon,  3 May 2021 19:33:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231715AbhECReH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 May 2021 13:34:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231459AbhECReG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 May 2021 13:34:06 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A405C06138B
        for <devicetree@vger.kernel.org>; Mon,  3 May 2021 10:33:12 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id q2so4645394pfh.13
        for <devicetree@vger.kernel.org>; Mon, 03 May 2021 10:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=goLJCN+tVpRnsloCO4BzWri3mHAjhnXDbA+9rFX7OwQ=;
        b=LDExJFl7/vTDsnpyNdQuz7mXKjdjYpD2g4DWhdZgPDn6/GhxU66KamRhPkrQVigLYW
         CBbR7CSB/cwuAoh/Rfe1nCP/FNElAz/vfArcKB6MPks7xHMCejplBS/xH5+pO523qcP+
         Hc6RPXMQVGK8IjlVGImwO291ZV0a37OzZntAw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=goLJCN+tVpRnsloCO4BzWri3mHAjhnXDbA+9rFX7OwQ=;
        b=rznKQCTPVHghrWyI1A7WHurdfabI8vt2p8t5v0tCaLju2T0HTgEWSqpmyf+w3u9DCS
         htIR1kWKpvIr9F9EWapph5vbzKA6UG8LxDzPVd/VXC400L1YS/HOXq+YKYDTTVjP53/G
         To7Xo5a+Q/8AU4bmNzRiCcPkIaTfN1tNYehIbRiJKC/Ew3eK0Ru/mjPS1jYIaGWyL+FH
         r1BAAo6sfnlEIpANc6vCYwJ69f4iXk1jXDWHrMun1Qokqpqk5vbIAudBXQiaOoa1k2GU
         Im2GXofb5r62HOTEH+z3RQ5CZLW/t/JTaNv1fCEN+FPTK5DSjXDkzsS4C5SEEAnYJQ0T
         pd/Q==
X-Gm-Message-State: AOAM533wrf4wWUUrSdewf5ej7WgaEcpyVwaUDY16ctZV2KWpKafVuwHN
        zXxDAHxo1zDtFYIX4GETSZVDnA==
X-Google-Smtp-Source: ABdhPJyT8qZQOSGWp1wZ94G/D8SGFvDBPGXndxli48bCW0OZ03jcC+Nb+AT0ZqLAKzbtV75ZNVhIJQ==
X-Received: by 2002:a63:7503:: with SMTP id q3mr19659576pgc.435.1620063191652;
        Mon, 03 May 2021 10:33:11 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:8584:3fd:2adf:a655])
        by smtp.gmail.com with UTF8SMTPSA id u17sm9306041pfm.113.2021.05.03.10.33.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 May 2021 10:33:11 -0700 (PDT)
Date:   Mon, 3 May 2021 10:33:10 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajeshwari <rkambl@codeaurora.org>
Cc:     amitk@kernel.org, thara.gopinath@linaro.org, agross@kernel.org,
        bjorn.andersson@linaro.org, rui.zhang@intel.com,
        daniel.lezcano@linaro.org, robh+dt@kernel.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sanm@codeaurora.org, manafm@codeaurora.org
Subject: Re: [PATCH V3 2/3] arm64: dts: qcom: SC7280:  Add device node
 support for TSENS
Message-ID: <YJAz1iDM+cNAAcCX@google.com>
References: <1619778592-8112-1-git-send-email-rkambl@codeaurora.org>
 <1619778592-8112-3-git-send-email-rkambl@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1619778592-8112-3-git-send-email-rkambl@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 30, 2021 at 03:59:51PM +0530, Rajeshwari wrote:
> Adding device node for TSENS controller and critical interrupt support in SC7280.
> 
> Signed-off-by: Rajeshwari <rkambl@codeaurora.org>

Please add tags from previous versions, like my 'Reviewed-by' from v2,
unless a patch underwent major changes.

Please also add a change log for v > 1, even if it just says 'no changes'
for some patches in the series.
