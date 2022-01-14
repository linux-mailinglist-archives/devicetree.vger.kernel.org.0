Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0EF48EB61
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 15:16:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241424AbiANOPr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 09:15:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241399AbiANOPq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jan 2022 09:15:46 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 729C4C06173E
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 06:15:46 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id m13so13450959pji.3
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 06:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=gIos4GkO2iqYWjr5mhM1is7Azpf5/j6Jd0z5PdzqEZM=;
        b=FhPhOVrgiQIgjwrvUl8LqJ3TpxdvbrH15EqUtc2jTWLZRmsKG3S1do6NwptiB4+n4Y
         NcFfh4IlLyleLTi7TwVu4IqDq3kPeQAvTFzxTptLwMWCecZFccZngybfR7nKxbVjRB3/
         +9bpTkD8HSlEylA7FfQtuICHaRHh8fTh4qjqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gIos4GkO2iqYWjr5mhM1is7Azpf5/j6Jd0z5PdzqEZM=;
        b=DlTcHxCmCm0ez+ybAvhjczaydvhCOwWRBOsSLRswZeJRRSzjhJ+wqqgeDD5btW9hRS
         y6Pp+CawgUMR0YvCqXTnKxtjEp20pWAW48kH+Hs/WwtBTxXljObknzconsyrrB0L60C3
         O6Qn+Jrw0jkr5l39DZjVErVJv9+2SqByXANEKUWYh0qj6BbrWlZoJ/lnSkleZbxALjN1
         gN8vFQPIErAB8GbVKx2MrC50j3Iin50b0+QdTtWNhgyWugHdD71MV+SGzaGJPyUxn5gw
         151cfBHEpO6Z6s6lHgPr5oTG7C4YdiWUKti181FicsYHLBj83wm2uoaKrU6GnSg/oqL+
         mfJQ==
X-Gm-Message-State: AOAM533mg0lo+jUfRpwWWekY5OXsjK+peYzIZKG6opGH2jKa4oACavGT
        PskWhFQ2JY1UCVWCLjkVQewpfA==
X-Google-Smtp-Source: ABdhPJxTTJQRzasKLq5iWQnNgDSmZDI0ri1UAx7npHnhGH5WObJT3xk9wMvWJ+uOQ2KFU/Cl6ALYCA==
X-Received: by 2002:a17:903:2311:b0:14a:8068:a6d with SMTP id d17-20020a170903231100b0014a80680a6dmr6860296plh.70.1642169745841;
        Fri, 14 Jan 2022 06:15:45 -0800 (PST)
Received: from localhost ([2620:15c:202:201:d9fc:bf52:3ca:199b])
        by smtp.gmail.com with UTF8SMTPSA id i13sm4785019pgl.81.2022.01.14.06.15.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 06:15:45 -0800 (PST)
Date:   Fri, 14 Jan 2022 06:15:43 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        quic_rjendra@quicinc.com, sibis@codeaurora.org,
        kgodara1@codeaurora.org, swboyd@chromium.org,
        pmaliset@codeaurora.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sc7280: Move herobrine-r0 to its
 own dts
Message-ID: <YeGFj/lfCLn79yzw@google.com>
References: <20220114004303.905808-1-dianders@chromium.org>
 <20220113164233.2.Id9716db8c133bcb14c9413144048f8d00ae2674f@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220113164233.2.Id9716db8c133bcb14c9413144048f8d00ae2674f@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 13, 2022 at 04:43:01PM -0800, Douglas Anderson wrote:
> The upcoming herobrine-r1 board is really not very similar to
> herobrine-r0. Let's get rid of the "herobrine.dtsi" file and stick all
> the content in the -r0 dts file directly. We'll also rename the dts so
> it's obvious that it's just for -r0.
> 
> While renaming, let's actually name the file so it's obvious that
> "herobrine" is both the name of the board and the name of the
> "baseboard". In other words "herobrine" is an actual board but also
> often used as the name of a whole class of similar boards that forked
> from a design. While "herobrine-herobrine" is a bit of mouthful it
> makes it more obvious which things are part of an actual board rather
> than the baseboard.
> 
> NOTE: herobrine-rev0's days are likely doomed and this device tree is
> likely to be deleted in the future.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
