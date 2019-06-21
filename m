Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 985264EBE3
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 17:24:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726147AbfFUPYA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 11:24:00 -0400
Received: from mail-qk1-f193.google.com ([209.85.222.193]:39061 "EHLO
        mail-qk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726054AbfFUPYA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 11:24:00 -0400
Received: by mail-qk1-f193.google.com with SMTP id i125so4690486qkd.6
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2019 08:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/6B5uybL/vQOh7w8hweF75PWuFBXAaXmKLIlmiYqweg=;
        b=g0pqzczqGaVMaTZuZJeMymSTykrdujS2tAjfaNFFWLMkC/jEKcq2X+4DUkCTSiw785
         5grPt95cpg2/4gapBk+7Y6G/j8akoUl9Jihm9TukMh1OjVN08v67LpXJS2ykJC880QLK
         7GCjhqPWjkEfvtlklmrAGzHyNnd7Eo7jIsyESfSBbhV7HHQNj/nHkZQD3rbq3iz0jFjc
         OPJV11qdzzV+jpVVNLCSmnIR6saHkkm59p63wVfhAsOpyk7hmK6CPLgtZdbLgbtuDQVT
         0umQw9nk0PgzL9ODZ9wzFM5y+GXTbwF4w4Udey3EuEZjmNmd/ARY4x2zBg2uY+4nvOvq
         w4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/6B5uybL/vQOh7w8hweF75PWuFBXAaXmKLIlmiYqweg=;
        b=cv4nM8Rvk8zZvCuqaJ9BUPH8QPwIqp5si1NWBlPsuX+AzU/It1J5ZvkeDk0TnOhelm
         bqBS8C7hyHYACVcZXssvvPfUCZlewarH0b2ePn75p1xDHzwSfZ73BYQ6TjE7mc2HXGpO
         x27Jozhz2E4E9RnANgrAKshUxaR6cfA0e3ZvMxY8x7OsyBAo3g1VAZxFDEyVEDhaA6eV
         I6V0xg9AyybWXZRoMPiHIH+TOsz7cYwbgJNuQC2hvIUSVhXehfEf+ghTB3wcKAyN3yzH
         tzwBp6/Wc/xUe9GzXLf81PV133itHztAO4Lg2oRW34wOgZbhrH9zIXKPxHsOCKwDDR+o
         60xA==
X-Gm-Message-State: APjAAAX425ZuU7MArJvt/fX0BTgxWNwZpbtVbSFRsRpAYj47OJVwgoEv
        OLygOkULI70gjZvFDLQjBujz0/rd
X-Google-Smtp-Source: APXvYqyBh9OcvZBK+oCI8iXmztevd3t+ZZMXFFIpU7nhEYNgk9EMn749PuLBYmOO/b3CptX6ggx2LA==
X-Received: by 2002:a37:4e8f:: with SMTP id c137mr75046030qkb.127.1561130639395;
        Fri, 21 Jun 2019 08:23:59 -0700 (PDT)
Received: from ubuntu (ool-18b82048.dyn.optonline.net. [24.184.32.72])
        by smtp.gmail.com with ESMTPSA id g2sm1660017qkb.80.2019.06.21.08.23.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 21 Jun 2019 08:23:58 -0700 (PDT)
Date:   Fri, 21 Jun 2019 11:23:55 -0400
From:   Vivek Unune <npcomplete13@gmail.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add support for SkyKirin X99 TV Box
Message-ID: <20190621152355.GA88160@ubuntu>
References: <20190618051025.458-1-npcomplete13@gmail.com>
 <2273961.GTPgWWlV5T@phil>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2273961.GTPgWWlV5T@phil>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 21, 2019 at 03:31:51PM +0200, Heiko Stuebner wrote:
> Hi Vivek,
> 
> > +	disable-wp;
> > +	num-slots = <1>;
> 
> drop num-slots
> 
> 
> Thanks
> Heiko
> 
> 

Thanks feedback Heiko, I'll revert with updated patch as suggested.
