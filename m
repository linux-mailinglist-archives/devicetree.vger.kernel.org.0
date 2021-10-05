Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03434422CDB
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 17:45:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236131AbhJEPrM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 11:47:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236042AbhJEPrL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 11:47:11 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CF09C061753
        for <devicetree@vger.kernel.org>; Tue,  5 Oct 2021 08:45:20 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id x124so26754153oix.9
        for <devicetree@vger.kernel.org>; Tue, 05 Oct 2021 08:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=DyGC1o0ExiPXVEzbLwM161zjxcLwXtL3mQFHYbOsiDo=;
        b=L9DrO2uUoQ/UpmFwlKvuVaRiu12KqmtBMCrJ2DKw5oxUJeW34nCAUCbRoMUM6Vk34w
         ZEn1A7xPxnl9G2tq4BMjqrXkoR4FGN/0sfLPauqPM5neqBW/CcBHVsADJLnA+lZ7mVFw
         9DD9epEqNj0CvNGEDlT7pmoNOmmBhaQpa3QpMAQjbsdvnfwwISp5B88IwHqK2dZFo7Xh
         bHzU0WBMncx9+eKP0uX+iaLmoCw8dixxGSFSzseCChZCE9hYyK5niUZYosyY5BYPkRSN
         DKYsTQM9tjlwCAvC8pZl5xAh7D9/yjgiUPUmC96sdR0cdjpy5xXgmxALmFMajHyfUX5D
         LQew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=DyGC1o0ExiPXVEzbLwM161zjxcLwXtL3mQFHYbOsiDo=;
        b=YA8iDKkRRcz0MNrKGm8KuruYybhHZwk0XZDajiqv1SvXgzbu3HcQKb3DaCrF8b2V1e
         n5+WbkB5oQQ4Cg0fpMRm+AjW4PeLIwJYtwUuSDbMYA9AysbyZmSZT5Jyu4gh4mruKjdL
         LZ7LZfGgy4PQNGkfUwlWPe0wOoC2ndeIefGW4+bxpJ+DF4y1fHiokqEqkEUGh4Vk9hUO
         4ls4FN8sjLPHK5ccq65oMf/ldPDRfVUK5Fq3BENZlY7ZeEcdusKTPi/F8+/vUbs5di45
         Bg66I14ADY/YjAzdJoF4MbWrk9+Up+x2YwuwztHyoD7XQ6Fn7ajed6DSDOtOkFIc5Dt5
         gO4A==
X-Gm-Message-State: AOAM531Wj0O0YdZveULzHw0yP7AonY5Z0dzjmAyO8SE7dMi+EL5mEfIT
        WRnJ76FeOML4dfhrmD6FB2kZLg==
X-Google-Smtp-Source: ABdhPJxcdpxGev1KAnRYwHDx/rf+AN5tzztCSHqw6+k+f4FyxvAWAqXGrACRtPVl44iPi8MVcXXF7Q==
X-Received: by 2002:aca:110e:: with SMTP id 14mr3093834oir.18.1633448719808;
        Tue, 05 Oct 2021 08:45:19 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id a3sm3345617oie.3.2021.10.05.08.45.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 08:45:19 -0700 (PDT)
Date:   Tue, 5 Oct 2021 08:47:02 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Shawn Guo <shawn.guo@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/10] dt-bindings: phy: qcom,qmp: IPQ6018 and IPQ8074
 PCIe PHY require no supply
Message-ID: <YVxzdiVKWOF9AVVV@ripper>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
 <20210929034253.24570-3-shawn.guo@linaro.org>
 <YVvx9jEGS3g9LD8X@matsya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YVvx9jEGS3g9LD8X@matsya>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 04 Oct 23:34 PDT 2021, Vinod Koul wrote:

> On 29-09-21, 11:42, Shawn Guo wrote:
> > The qmp-phy driver suggests that 'vdda-phy-supply' and 'vdda-pll-supply'
> > are not required for IPQ6018 and IPQ8074 QMP PCIe PHY.  Update the
> > bindings to reflect it.
> > 
> > While at it, also correct the clock properies for IPQ8074 QMP PCIe PHY.
> > And as the result, 'qcom,ipq8074-qmp-pcie-phy' and
> > 'qcom,ipq6018-qmp-pcie-phy' share the same clock, reset and supply
> > bindings.
> 
> Acked-By: Vinod Koul <vkoul@kernel.org>
> 

I think it's better if you take the two dt-bindings through your tree,
so we avoid any potential merge conflicts related to possible other
changes.

Regards,
Bjorn
