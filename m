Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9A4C28269F
	for <lists+devicetree@lfdr.de>; Sat,  3 Oct 2020 22:31:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725864AbgJCUbo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 16:31:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725913AbgJCUbo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Oct 2020 16:31:44 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3053C0613E7
        for <devicetree@vger.kernel.org>; Sat,  3 Oct 2020 13:31:43 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id b22so6180285lfs.13
        for <devicetree@vger.kernel.org>; Sat, 03 Oct 2020 13:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lixom-net.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V9/JwcJon8kbWWL9Pv4De+Xo9KVyYTIMKvu8rVtqxlk=;
        b=SaFj8kDi0XCRV15emYTadnIY5m6Nof9mWRuVpHOOINYIs5h+sGcKJPuooElcqlleuf
         aZqAk4Z/cWlwGipdnulvCbz1eV5mha81O8o4Aqu2vji2Kj90IO3yapJZrFQcY5b00sQE
         p14NbG/fdUdwBeNgobilmBG2vYkoJWRn3l4f/R6d3vdT8WyegbaQQCG7F8/H5hROQNp7
         zABrFWl0FN9gS3AihSzKyR3s6nPOM/2wjuRatUXPPvo/Trx3XFHPh+3vaoSpDwl8QSbK
         Q/tKWhJHL8yBRF4CJwTmaH0L1ZWhP9t516FJ9F/3J/mvKHIu7SYHREGB2MiKcaExSlio
         C1SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=V9/JwcJon8kbWWL9Pv4De+Xo9KVyYTIMKvu8rVtqxlk=;
        b=Xie6ShBYDCWad7cdKV4mqd1Vda84619QDVNh5vpvBrRNZOwFugajS9HBgGw5K8w1RO
         hDjitoaiT4PUFwTzlqHMWIRPWOeip1R5B9+79QGBwxr9WweNw51Rjyq41eKM2i453Qkc
         c7EoNecs/84KQicN+9lAC2CyUNgDUNQXy5B3D7yq+baxgPB/QNIKpjq6kJFtTurS2f1N
         RZ1X71cVitGVm2kyG6TbczpUspSig5mH+bA+731DT9D+O/EFlt5iYDWabmrxHzfkQdLl
         v+N1KkZFHUMD+jWwFeO+JOivrJGUJyyC/gnlXO99JZM8NvQPXJa60SU6V8H/LCToxZkA
         kFPQ==
X-Gm-Message-State: AOAM532vL/xsepeIYCE/t1HTNVLV+pPGEdgjexgq/kQTZwc6iJ7wllJB
        FSnowNd+3czKE3vnogKbrpzydQ==
X-Google-Smtp-Source: ABdhPJzNjoQrrC6/r+Pg8u5bbqO7r+BkXumUZAZ3VTgnWGSxW6GnQQN/9apECIEdwkyu5/9vxJ/Xeg==
X-Received: by 2002:ac2:5e72:: with SMTP id a18mr1207157lfr.69.1601757101622;
        Sat, 03 Oct 2020 13:31:41 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
        by smtp.gmail.com with ESMTPSA id x7sm1880206lfg.281.2020.10.03.13.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2020 13:31:40 -0700 (PDT)
Date:   Sat, 3 Oct 2020 12:57:27 -0700
From:   Olof Johansson <olof@lixom.net>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     soc@kernel.org, Rob Herring <robh@kernel.org>,
        devicetree@vger.kernel.org, Wei Xu <xuwei5@hisilicon.com>,
        Chanho Min <chanho.min@lge.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/6] ARM/arm64: dts: Fix SP804/SP805 users
Message-ID: <20201003195727.GH8203@lx2k>
References: <20200907121831.242281-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200907121831.242281-1-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 07, 2020 at 01:18:25PM +0100, Andre Przywara wrote:
> Those are the remaining patches of the SP804/SP805 DT fixes. [1][2]
> ARM, Broadcom and Freescale have their respective fixes queued through
> their maintainers already, but I haven't heard back from LG or HiSilicon
> so far.
> So can those patches be taken through armsoc directly?

I've applied the ones who didn't have replies from platform maintainers yet.

Thanks!


-Olof
