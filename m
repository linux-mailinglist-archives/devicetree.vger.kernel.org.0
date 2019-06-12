Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0E81F41F62
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 10:38:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405046AbfFLIia (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 04:38:30 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:38030 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731503AbfFLIia (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 04:38:30 -0400
Received: by mail-wr1-f68.google.com with SMTP id d18so15897827wrs.5
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 01:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=SlZ+ry2gVHb0vEOp99Y+xW09OJTo9PGHa87ZSVB1Oo0=;
        b=vZePWY3yC7OOSFWVhWHTcSKE21kHBJxn1NAyVQ4M1543O3uRPAxhpZ30BUV8d245jD
         LHWeRIT9vf3qLlW5oJ5aztvZ5nxEteoxnsMp92vu5OLwDZhZLwShdREC7G6Z1Y//U5qh
         U9C59rbz9jrF69PSiz/8ItZi1bohtYAZ0z/CG8cpfLas1Q+6Gc+pVwmaSXyuIr39hpqY
         V4GNXqM2lxrY6Uv6HEG74zfIZeFG0cTGnS0HYbXg7QztvrDZcamWwu4zfRqWlWbYsEn2
         4eYKxZKI6XjHIoreXncIrwg/lJuHCnbRb9NYfZ9In1RIuMsikMFDhy/o5U0GoUQuyRNh
         40VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=SlZ+ry2gVHb0vEOp99Y+xW09OJTo9PGHa87ZSVB1Oo0=;
        b=Y3ck4Mcus8ezAPuaLofwlyJHVjLVddR1jmHkHI+GBz/YlFQ9ZYT4EfvnTMSLUCKdEQ
         MmNrP5ICoHUXBtMTAfdaY+DZgLWEgXhoMGp4SvZyRoRcwQvsWKGodowhmMr0YegI54DD
         8aNQDS3NgvUNsh37hVu9BYr6rqTFagb6F9/pvSqcqDNwgYUTmPjSS5urjg8TTYxN62kp
         25uHO6hiRsGzy/WQYlMoGXdmKTsgSC8YZuRc0Aifc5eCiFI4Z7ktoxhT2PEx0SgLa3hy
         SMKc28bjvojJjcXKHIWFz0IEOm4gkr6dQD06p18f6gxGWB6VipZ6b+vHcbambk5QAucU
         d4kw==
X-Gm-Message-State: APjAAAW1iXYrpDUzB86UHmzKwpBoCHPaCVIuSKI22Mrc2HeV3d73eWBm
        srTg0Pdi2RIENR8DYCptUK34PA==
X-Google-Smtp-Source: APXvYqxo4tnsR2pPCujkEtj2aBkEhQ0kyZnmv+OP4MsXO0mj7wjW8QxjU+l+svLmRvcUDLaaflrCZw==
X-Received: by 2002:a5d:6243:: with SMTP id m3mr24339559wrv.41.1560328708794;
        Wed, 12 Jun 2019 01:38:28 -0700 (PDT)
Received: from dell ([2a01:4c8:f:9687:619a:bb91:d243:fc8b])
        by smtp.gmail.com with ESMTPSA id x25sm4426439wmc.36.2019.06.12.01.38.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 12 Jun 2019 01:38:27 -0700 (PDT)
Date:   Wed, 12 Jun 2019 09:38:25 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Charles Keepax <ckeepax@opensource.cirrus.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        patches@opensource.cirrus.com
Subject: Re: [PATCH 1/3] mfd: madera: Update DT bindings to add additional
 CODECs
Message-ID: <20190612083825.GX4797@dell>
References: <20190530143953.25799-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190530143953.25799-1-ckeepax@opensource.cirrus.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 May 2019, Charles Keepax wrote:

> From: Richard Fitzgerald <rf@opensource.cirrus.com>
> 
> This adds the cs47l15, cs42l92, cs47l92 and cs47l93 to the list of
> compatible strings and updates some properties that need to note
> the new CODECs.
> 
> Signed-off-by: Richard Fitzgerald <rf@opensource.cirrus.com>
> Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
> ---
>  Documentation/devicetree/bindings/mfd/madera.txt | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
