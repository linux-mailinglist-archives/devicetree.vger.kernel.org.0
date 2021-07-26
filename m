Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88EE03D5614
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 11:04:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231800AbhGZIY1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 04:24:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232087AbhGZIYZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 04:24:25 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9C96C061764
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 02:04:53 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id m1so12021913pjv.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 02:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=Xz06B2seJbAQlO9CcTeryFAMJuxVXuSBorMvgD67eQ0=;
        b=Ps7MbrCrmjFyQtLfvWMOLiCu47ZTyOsBIp7vJ1Pe7rGkC6N6CrDXNSNoWR6V3vLEw1
         bm2OEU0xnIC7CZ2N/VS6ym+yVKBvKGCuMJo/hJPs5u+3ASIoDwJtY83B9WCcDA4wyHvm
         BFDZred871vOZCUWFV1ol8cBjccQWfPR8FG4hgR4z9lOqvnh0I76AAq4OTdjNRZAL3/F
         2NFrY/MSyDvC3P+x6noLamSzeNQ6JzGykcrK4Tpcc/3YDDlwbZ+/8u/RKZa6KAsrw7PX
         Arrinrk1vlSfQiWseUKLuDpuLBGZhoAMCTQlEive1W2I2cbzyT+0vh5GPytMkEUH1WfL
         VcoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Xz06B2seJbAQlO9CcTeryFAMJuxVXuSBorMvgD67eQ0=;
        b=WeXvPdAE8w7BGquLIiCSpB/cPDhMHia0Mqfp1o6Sr2skdfr6FOsjtUqzeLDzzxYh4a
         r1rDP1AlTnkYKqsPI1BKnbfKoiSjLEuERelZLf/4J+pmDUNlz2M8Dkorigdu/x5nMb7u
         1DZUoGT7FHG05Msf684t/VbKhEVzqvBvtwLPtvx23vOUiiBcMSoUhJOO2rFiRF6iPJuq
         8+498bT0bvj6RzU1KxIOmcK8q9Im78LZOmzOYxIMazsLsPToMbDb4vlHYQdIvEtIvRFg
         tRGawEOd52xti8yiYl1Pl6HJyADWevv2IuLTFekoSdMYl4Uz7hKArdbW+V254ba9swWC
         Kx2w==
X-Gm-Message-State: AOAM5310d9e4LqC+dD/T9RZRPo5Fy8FAIHWU4wybfDC6s4yd7MR2sppj
        awHQF31ZciEkAMahR9vt9Er1Cw==
X-Google-Smtp-Source: ABdhPJyTj+g7dDEFxH8wosTr8egBp6LUL6vFBgOgVhr1Wvs7R4VPau35+JAOCmZPfgz4QayNf1e13A==
X-Received: by 2002:a17:902:d90b:b029:11b:f58c:f3d6 with SMTP id c11-20020a170902d90bb029011bf58cf3d6mr13626574plz.42.1627290293201;
        Mon, 26 Jul 2021 02:04:53 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id u190sm29855029pfb.95.2021.07.26.02.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 02:04:52 -0700 (PDT)
Date:   Mon, 26 Jul 2021 14:34:50 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
        linux-omap@vger.kernel.org
Subject: Re: [PATCH v3 1/3] ARM: dts: omap: Drop references to opp.txt
Message-ID: <20210726090450.bovae7meiohsmfn2@vireshk-i7>
References: <20210720144121.66713-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210720144121.66713-1-robh@kernel.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20-07-21, 08:41, Rob Herring wrote:
> opp.txt is getting removed with the OPP binding converted to DT schema.
> As it is unusual to reference a binding doc from a dts file, let's just
> remove the reference.
> 
> Cc: "Benoît Cousson" <bcousson@baylibre.com>
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: linux-omap@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  arch/arm/boot/dts/omap34xx.dtsi | 1 -
>  arch/arm/boot/dts/omap36xx.dtsi | 1 -
>  2 files changed, 2 deletions(-)

Applied all 3. Thanks.

-- 
viresh
