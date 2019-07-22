Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 15D7270BFD
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 23:49:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732841AbfGVVsm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 17:48:42 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:42086 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732818AbfGVVsm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 17:48:42 -0400
Received: by mail-io1-f67.google.com with SMTP id e20so47017549iob.9
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 14:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=MNd1s/RK3q606uXXVJTbjFYHj9TY0k28b7cB1e/7MAQ=;
        b=MB1brrVu2uq0F45QssDCMFp8dE+S7FCP6t7lDN60jYhQmIfjMkzXGWmmi3kXOz3zud
         3WdjyM0+VEXASec8IoI9iUuYFkw6vnDDCm0F1OcreqlhgZN4yzXedLc/6WYFGCJewnHM
         m8uapPWOfQJawreTjO1fzmrLeqYvuFfJfom7Lq5mYYgLRpxRNii/J6z58qLjlD5dcfOz
         US9ROESCUbI1jO0cCkTklAaVXlSQYbiaYkE2D7LNmRcNJazb84NTwPnG83vVmYosRRkR
         dq6e6yfBx2sTbOu4SqzCEWon4Jv/glnD/edbvvXlwzlnHJ7GxrxAe2BPd4cvxxzL/183
         GcBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=MNd1s/RK3q606uXXVJTbjFYHj9TY0k28b7cB1e/7MAQ=;
        b=iHe9Fttnlix5GUzExmb/ZSuvUmzwLJFFw8BcOJrrRGA1D2cXqStPOaHe0fGJs9Ld1E
         lVH3Jr87iA0Ea3ECqY+xkO6UX7f/DDMvdAmOE8VJVW/jFGbEGhJM2nBYDPbm/imXrwFp
         j0STCirAYxgGoQGL1svErXA7UDr4W2YIfJ8gnUdhIbDSSYS944hQJiVTJU4zllTAselT
         zm2Qgl8LOZN/5q+ROb3KvGRZ1PXB0jhN5Tr+5HkWfBu5Rri5i2cTYPc7XWWrdNUBxqRf
         hR4tV8avL+vMYU5j3GZwsab2ornI1vNtA+9iJbpLZX00WaaQlni3IGdWTEDz55vmGEeA
         +fLA==
X-Gm-Message-State: APjAAAXfqwpTTJAZLMUItzDART9d8keFmCJR3KXuK2Fb9pi2WwP6/CrJ
        uFnPkgVLRBhFEEd03U2eevFpcw==
X-Google-Smtp-Source: APXvYqxULiroOZ1sO9gKcnArywEPT23iTB5ofTsbzS21+NJj0kZoYkSm7Q/+HCczMOrY+80+gzO+2Q==
X-Received: by 2002:a5d:9b1a:: with SMTP id y26mr1829264ion.238.1563832121767;
        Mon, 22 Jul 2019 14:48:41 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
        by smtp.gmail.com with ESMTPSA id t14sm34809856ioi.60.2019.07.22.14.48.41
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 14:48:41 -0700 (PDT)
Date:   Mon, 22 Jul 2019 14:48:40 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Yash Shah <yash.shah@sifive.com>, davem@davemloft.net
cc:     sagar.kadam@sifive.com, robh+dt@kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, mark.rutland@arm.com,
        palmer@sifive.com, aou@eecs.berkeley.edu,
        nicolas.ferre@microchip.com, ynezz@true.cz,
        sachin.ghadi@sifive.com, andrew@lunn.ch
Subject: Re: [PATCH 3/3] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
In-Reply-To: <1563534631-15897-3-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1907221446340.5793@viisi.sifive.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com> <1563534631-15897-3-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Jul 2019, Yash Shah wrote:

> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Thanks, queuing this one for v5.3-rc with Andrew's suggested change to 
change phy1 to phy0.

Am assuming patches 1 and 2 will go in via -net.


- Paul
