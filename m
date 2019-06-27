Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5E1F8583C8
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 15:46:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726832AbfF0Np7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 09:45:59 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:40417 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726370AbfF0Np7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jun 2019 09:45:59 -0400
Received: by mail-qt1-f193.google.com with SMTP id a15so2452111qtn.7
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2019 06:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RvlLa2f6FXHpp41B30iGxN9xdJLyVpWbPdRkmCrlMUM=;
        b=M9s5jArQGsv3jFLsOazm3k0Su2Ijc3P1WDdeP9ro/cWAwLGYbv4XUsyCwC44qXPBIH
         SBTsevQrWVmbdulLcgJzJGiVpX+jZ5b16alhATkJ1j1sJI2gEaYpBBq1SyUjKJQZlb+B
         yc/jS8FJrVezk4HOhfIzhysnc5zmQh4bo3KG0ByWmNRJ+2JIgj0dhGYcajVGFmfwR27t
         hbWHLJHo6ylkWL8FJndTQTJ+4SP8RK+JmUwQysqwRAyeTZQJisNWvYcRM49NEzSrwxA+
         Ha/oUMqwW+h25eRehXb5Ew6yRYt29oG5OLcAk/AFlw4gJIRHqCnP+r8GbfB3/8T5J5B/
         irZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RvlLa2f6FXHpp41B30iGxN9xdJLyVpWbPdRkmCrlMUM=;
        b=AoY1NTuTeWr6SffQsioldPT2TBGQlwLoNt+QtS537EOoS/4rD30ATs2aHeF2gnjahs
         xc34YK74EqP9MZ6InH+ScIlG1XPZF9fcvxXS5kGZbXP2i37T3ZmcaX9k4Q1Tgs7dywGv
         OcTEBAGc5V8RsR6VBjijL4nfeuOj68wVt77cBFIySoAoGaVMB8MiwqW3zDOFfWyNhEZY
         IktPfPdUQ4yjoJMpsKplqjyqXq/VjMDcGuShe2vx61SsVCJxZBZ/t8vr2/jBOu5INTLO
         gv/H/601SeJno9txz3/wf9JdodTt0uBWdu9BuXoqh00qfvnDgbwDxpCK5DYQvNoJXeGH
         oa7g==
X-Gm-Message-State: APjAAAXDL9cdpTb06xG9U5+uTjT7m/sP63z5ZcRSRnQQHNwcsPYts74E
        otNw4VbesXU3tNHEJjjO9F8POWfr
X-Google-Smtp-Source: APXvYqyhMoXbBadlv3aGIW8CDGWxS2SVIQP2MLynVqH4G4BIBYr3VYanG9PLF35D+hUOSanOADREqA==
X-Received: by 2002:ac8:4705:: with SMTP id f5mr2976812qtp.99.1561643158801;
        Thu, 27 Jun 2019 06:45:58 -0700 (PDT)
Received: from ubuntu (ool-18b82048.dyn.optonline.net. [24.184.32.72])
        by smtp.gmail.com with ESMTPSA id o12sm847801qkg.99.2019.06.27.06.45.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 27 Jun 2019 06:45:58 -0700 (PDT)
Date:   Thu, 27 Jun 2019 09:45:55 -0400
From:   Vivek Unune <npcomplete13@gmail.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add support for Hugsun X99 TV
 Box
Message-ID: <20190627134555.GA25086@ubuntu>
References: <2273961.GTPgWWlV5T@phil>
 <20190621205308.5177-1-npcomplete13@gmail.com>
 <3247989.aGYRIomCNH@phil>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3247989.aGYRIomCNH@phil>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 27, 2019 at 12:38:25AM +0200, Heiko Stuebner wrote:
> Am Freitag, 21. Juni 2019, 22:53:08 CEST schrieb Vivek Unune:
> > Add devicetree support for Hugsun X99 TV Box based on RK3399 SoC
> > 
> > Tested with LibreElec running kernel v5.1.2.
> > Following peripherals tested and work:
> > 
> > Peripheral works:
> > - UART2 debug
> > - eMMC
> > - USB 3.0 port
> > - USB 2.0 port
> > - sdio, sd-card
> > - HDMI
> > - Ethernet
> > - WiFi/BT
> > 
> > Not tested:
> > - Type-C port
> > - OPTICAL
> > - IR
> > 
> > Signed-off-by: Vivek Unune <npcomplete13@gmail.com>
> 
> applied for 5.3 after doing some reordering to make things
> alphabetical.
> 
> Heiko
> 
> 
Thanks Heiko!
