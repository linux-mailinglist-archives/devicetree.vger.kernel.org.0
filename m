Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 60EEC70BEB
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 23:46:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732636AbfGVVqb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 17:46:31 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:36654 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729624AbfGVVqb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 17:46:31 -0400
Received: by mail-io1-f66.google.com with SMTP id o9so77437161iom.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 14:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=VWIZBvI5lCbidvXKY6O84lqCZ2AjaGY2QVwWc2bhom0=;
        b=QRxolnZMSRjr7BTm00Z8wwbzzUyOLZZvVERqLil5ipazTc2XhnIF6C70R84dF+etKK
         WpObHA4zIcJv8+m05XstTbyF6sBH1EGDTFBnPfsk6yOxc+A+b+xply+hM1A5RzrT6HuM
         ROpw+KdsvciRm3w1quQySFv3XIOP7tbwz4KFM/jO2etmZxVfPAwmNwqV/sHgdZ4lVw8X
         0ucGKbgZRWgL5ixPf9JnKL7ngRO65i1fCFJI/CSQUr12AdIakOCqkGfZg29b/es/N/N0
         aIHkJHZxbOYMPazFYdIeLMsmd2ecRQ5bVatC05ATHZI3daEtEXkF5QO2W7Nsv7frreB1
         0NsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=VWIZBvI5lCbidvXKY6O84lqCZ2AjaGY2QVwWc2bhom0=;
        b=LTDA+erMzHwBMXKvVLw0ZPVkiMPnZgC/eIfsGsQl4GInedOJ47R/Zh8M4o+77AcFtI
         h6PgxkREjVaQWmvj2rYXyG+4FRDxa6O9d7tZ89MJHHwEkMPNndukxaGhU8vNXUgW7SoL
         dIqUxEjRNYgC+E3qku0otbk9eaYTA+vfvNi1VpTmuJeMxDUHGCE25/iumia3KXfuNfqR
         rHdZET9tBv6OosIMvoaK2d+AOzMn5CYcZH1uC8b6MTIhTjxJL4dFSk1th5426qxr3qg7
         TukACk1ruFMD/dOGwMBzlcVRn/FmHIVr8BQ7mQZptLK7LwhSOCpmBE11WLwawIr7npE1
         Eo/w==
X-Gm-Message-State: APjAAAU8yRE3dh847yQe02LKE27VxEpxxWJIEP9V5Qq7++icYfmnQ6cb
        JcDAwj63+8iXKjV41slrwnxKXg==
X-Google-Smtp-Source: APXvYqyd2dW888lhV8CkKjbqoz2NLahTQzYkKlmc3wSjVe+iOryGMbi075TFpJ6Xc0oCjN8Cgg19Lg==
X-Received: by 2002:a02:1607:: with SMTP id a7mr73356673jaa.123.1563831990677;
        Mon, 22 Jul 2019 14:46:30 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
        by smtp.gmail.com with ESMTPSA id x13sm30725719ioj.18.2019.07.22.14.46.29
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 14:46:29 -0700 (PDT)
Date:   Mon, 22 Jul 2019 14:46:28 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Yash Shah <yash.shah@sifive.com>
cc:     davem@davemloft.net, robh+dt@kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, mark.rutland@arm.com,
        palmer@sifive.com, aou@eecs.berkeley.edu,
        nicolas.ferre@microchip.com, ynezz@true.cz, sachin.ghadi@sifive.com
Subject: Re: [PATCH 2/3] macb: Update compatibility string for SiFive
 FU540-C000
In-Reply-To: <1563534631-15897-2-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1907221446090.5793@viisi.sifive.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com> <1563534631-15897-2-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Jul 2019, Yash Shah wrote:

> Update the compatibility string for SiFive FU540-C000 as per the new
> string updated in the binding doc.
> Reference: https://lkml.org/lkml/2019/7/17/200
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Tested-by: Paul Walmsley <paul.walmsley@sifive.com>


- Paul
