Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D31DD9F00C
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 18:22:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727064AbfH0QWA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 12:22:00 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:34973 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726871AbfH0QWA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 12:22:00 -0400
Received: by mail-oi1-f194.google.com with SMTP id a127so15430794oii.2
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 09:22:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5JlZoESkdfp/SKYJDWkEzRPTnHXmzPaOFMIA9w2D3Ms=;
        b=mwf6UwukW/t60UothIqAV7XpMkLgj63YZ1YKXkLuKQNp9ukyaBKZLzPYbxJSxRYjLU
         3G3+8oVGkdKoTuWfKOExYyMkTkIlaXKdr2DG4Tdmm+r2OWa/nNP2/0IW1GE00uBbWrlL
         D7zZWjWOXVfa6gTLjIkk6tZUbOtUK89+w+OJJ1199DDwRqtWPzrC+t8gRXD+Q8BVz82J
         yAsvtbzopAepWZOz4g+GbEGAWH8zwTiDRz2ue7TjPMbZydCTHYMnGnlpGPQOcjZK5EFt
         63SE4KB9VnKyVnDPHfO/XnHY2+T05pklsy92waWNdGHlPqv8Ez9+QAtMfAaz3HHqycUd
         yllg==
X-Gm-Message-State: APjAAAWbT8QiELMIXGcrR75ImnHSKiAqfKL4Wp6/ScbDRQGEqeoQs5ar
        e96oWa4Uie+a/sy0h912mg==
X-Google-Smtp-Source: APXvYqyB0l/ITKcu0ArpTcwZRprxENst8wTwsb2llLpo+xmsGSUsstJL4pe2qy+jUlqbKOcyC22w5Q==
X-Received: by 2002:aca:4713:: with SMTP id u19mr16207926oia.139.1566922919927;
        Tue, 27 Aug 2019 09:21:59 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id k6sm5830519otp.57.2019.08.27.09.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2019 09:21:59 -0700 (PDT)
Date:   Tue, 27 Aug 2019 11:21:58 -0500
From:   Rob Herring <robh@kernel.org>
To:     Nishka Dasgupta <nishkadg.linux@gmail.com>
Cc:     robh+dt@kernel.org, frowand.list@gmail.com,
        devicetree@vger.kernel.org,
        Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] of: unittest: Add of_node_put() before return
Message-ID: <20190827162158.GA14084@bogus>
References: <20190815062218.5428-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190815062218.5428-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 15 Aug 2019 11:52:18 +0530, Nishka Dasgupta wrote:
> The local variable np in function of_unittest_platform_populate takes
> the return value of of_find_node_by_path, which gets a node but does not
> put it. If np is not put before return it may cause a memory leak. Hence
> put np before a return statement.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/of/unittest.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Applied, thanks.

Rob
