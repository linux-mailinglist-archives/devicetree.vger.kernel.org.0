Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 079FD373C74
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 15:33:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233332AbhEENen (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 09:34:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232410AbhEENem (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 09:34:42 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90CB1C061574
        for <devicetree@vger.kernel.org>; Wed,  5 May 2021 06:33:44 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id lj11-20020a17090b344bb029015bc3073608so837151pjb.3
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 06:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=EEAwP2DTcDHFZQ8vrq3ZegmCl+DiPTDQ1Kerz5xxbXs=;
        b=kjwYrh+pW6qZGMIxZ0oVfQhnh73KD9oz4zhtbSpuGxQMJozmKEzk/jHx+9q71TRThB
         E1xDUFFCM2eU6e+N0loEobFeYpH1vsxPo3W69Q3TGs60eV5U+6aPLLOXaN8v8rqYfxKN
         mP7DPLIrgxHZSZ31SyMJBODqfL4z0x05sHdVY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EEAwP2DTcDHFZQ8vrq3ZegmCl+DiPTDQ1Kerz5xxbXs=;
        b=bzmH6xSZeCMhnmuMB0xY6sxKsw+2hS5YcHG+vn9KTssJukrSqVIP/8KdEuztaS7zps
         iD6vg7X0OHWZkWrEPMfT3JKCP+NbpN4gG1MNL/btiJjGyKAp2baJyd8IKAS8LzwfUYhu
         DGuvGK05uHArO6vAkJEVDrhkCR/4PtXwVCKTvgmzOCA+Zq1TLAEnubPiqxwGQR7wJXzj
         bBqQcJJnlbS5cwZ6LMA45xdTTG38HEvaI0iITnveEvXWz5t1QRJjSOkJBwiLEXXCf91Y
         Nk1jE7J/mPlBgg3b8F7fTfm5zovCACze7f++raY2fMIaM9rsMmzLHaAftjxsUN+WzZVd
         Xo9A==
X-Gm-Message-State: AOAM531LXi6l4iim4Foy0fRKXI2HXTFGI6nLfEVPuoRE/2PKJCIL4okc
        Siyu0ovrmK6e7M8nfWe51vh7jg==
X-Google-Smtp-Source: ABdhPJz5t8isT58EhFTjSFQgkq1S2GMFXUTKHMXtwD1sB54Qj96vnAv1XYXxB+LEGz/4Y/N6GLN3Ww==
X-Received: by 2002:a17:90a:e645:: with SMTP id ep5mr11598953pjb.143.1620221624133;
        Wed, 05 May 2021 06:33:44 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:8770:f856:b2ff:e5e4])
        by smtp.gmail.com with UTF8SMTPSA id lx15sm7013890pjb.56.2021.05.05.06.33.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 06:33:43 -0700 (PDT)
Date:   Wed, 5 May 2021 06:33:41 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
Subject: Re: [PATCH V4 1/8] arm64: dts: qcom: sm8350: Add label for
 thermal-zones node
Message-ID: <YJKetV0HRgyxL0ip@google.com>
References: <1620197726-23802-1-git-send-email-skakit@codeaurora.org>
 <1620197726-23802-2-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1620197726-23802-2-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 05, 2021 at 12:25:19PM +0530, satya priya wrote:
> Add label "thermal_zones" for thermal-zones node.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
