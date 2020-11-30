Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E28042C80E3
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 10:24:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727856AbgK3JXg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 04:23:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726667AbgK3JXf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 04:23:35 -0500
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACBFBC0613D2
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 01:22:55 -0800 (PST)
Received: by mail-pj1-x1044.google.com with SMTP id hk16so999360pjb.4
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 01:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fTOXN4nxw5TCY//Kufrm2+0NCBKye5gOZMTx2MWbE3Q=;
        b=kPDmDSvmOe1LUwMD057KVz880ZgDeHJqCPM+G3bTMa8feuuA3nShhW6zQkYUBhYeZX
         JuWHwxsm2Bwrn065rczlppAgg4Oms3tqEz/6al/htP+AFGlnbkjqbJhX4rjWDUeyxhcp
         HXaaNBKNpPKAcbYU0rIXRX3aRS4DsoXuyUnHtPUyE3CfhSebYId3GOqTYMEJ+CT2e4M2
         2vrDM0NLwchQ+fz4BlrlSqCTwCW/mhTPqn0SpViKwj8E+PkRNiI9QRUAW11KeUITR6dU
         rIEH79WOr+gZhEv/KUGH82XYJ3yz1s6zf/Nk8y1B7srfv6On72ePR0Qn4zpQJKECuY+l
         ly0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fTOXN4nxw5TCY//Kufrm2+0NCBKye5gOZMTx2MWbE3Q=;
        b=k738TqnwovLJQiWyXNC6u6Z9miupH2b60+TpiPkQCtgmrjdFBGOhcD7e83VqZFJxmo
         9JByf2v4IGZ6qISyNcyjzqbUrAZJnxEsY9IYqTc/Pkn7k2q5iyKj2roYvamtPrdbwxdi
         NXcn6PaFLxXkZaq1QWXp1wjV0H5f7J7er+LGhkCOneI65U2+NRH81xzlYuA1PRxBg04R
         I2eD9Se+XizPDkvmr+jBN3RpLwHJayenec+Vq6KELdX40mviproxiW1U9dXlk+mVBM8F
         HWS6LcYmZQHpdiHfIOSSatA9HbceLZH4c+oyBxGh6xWTc6TxZ1EfHqygUuEPOgUgitUh
         PIDA==
X-Gm-Message-State: AOAM531GiBf8PExdNrtpRD2RDWThygtetdNb5mIyRmzV2DsjPMxLIiK3
        yHlKE+0JCLeaK3mh3i/BwV3fFg==
X-Google-Smtp-Source: ABdhPJxy4D6dNwwXsBZTU0pXZ8cZvZC5SlymPK1fx4G/w4qYP/g6IOG4OO5q+O+OSYXBpLuJN6n7fg==
X-Received: by 2002:a17:90b:a17:: with SMTP id gg23mr7649257pjb.129.1606728175106;
        Mon, 30 Nov 2020 01:22:55 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id t9sm16046133pfq.39.2020.11.30.01.22.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 30 Nov 2020 01:22:54 -0800 (PST)
Date:   Mon, 30 Nov 2020 17:22:48 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: c630: Define eDP bridge and panel
Message-ID: <20201130092247.GA4245@dragon>
References: <20201128034231.89750-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201128034231.89750-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 27, 2020 at 09:42:31PM -0600, Bjorn Andersson wrote:
> The Lenovo Yoga C630 drives the Boe NV133FHM-N61 eDP display from DSI
> using a TI SN65DSI86 bridge chip on I2C 10. Define the bridge and eDP
> panel and enable the display blocks.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Acked-by: Shawn Guo <shawn.guo@linaro.org>
