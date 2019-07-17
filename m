Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 281E66C17D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 21:30:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727225AbfGQTaM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jul 2019 15:30:12 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:41507 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727184AbfGQTaM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jul 2019 15:30:12 -0400
Received: by mail-io1-f66.google.com with SMTP id j5so43415801ioj.8
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2019 12:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=m+aYfYk3qqQFGYyIVUXqsjPB9Z++/CqoIZvcXZFm3io=;
        b=NJcT4ReHcQvNMVZLMGPaZHK9eIDuuQdneBHhUpijosU4l0tZrd8F1G6YEvtqk2ueyi
         ab1b1YjwcBKcTGWxeivJOOfmix6JaiRG0BR9tHga+fndXXM0hr+gs4SyrTWDVjI5fVGO
         gghtcNGqRteT6wrHv4pRZLL+6qVEHLLDHbnV7njAfX4NdhGXmRAI1fqW5JYPRGRWDP0j
         JARewp2Favgi9oXSi9PW9R61lRbyPMIvrMt+NZ+VbLzOVodM/REUULreUB03nEjs+Re5
         8YIfejH0GL6sMcGo0GH4RrAnp7lwelNfWuMTgP/cEASY1Ecqq6iNP9z6EJNJMghFmDzH
         TPsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=m+aYfYk3qqQFGYyIVUXqsjPB9Z++/CqoIZvcXZFm3io=;
        b=uRsb88d1C8TNBGoG7pStxnlB1/qHZJAdy1i0qZtK55139NTECKH/LF5cIdSuapX7hA
         K3A/lf1bAg1zaubBcTUs0qb9BKUKd697rVpMU7lmJieHF2nWe+XIeizYllAArq8niYmB
         zbU00m0QZHw9suZK4t1BIEhaSAtYHBbGnM+Y/HGEKxEJFO3h7VW3W8g6c+Mj1wTKTbxh
         fYx4b/ZzBcO5UteFEzQKStx9jGCe9l7+WItg8pWQnxicxgRSOASMqmM5DyiimpyENEZj
         7dQzPWJlvrQG8LJwgBgojDUGKRVZeD7EOYf2cY0kv8XqsImYOl+ek+bTx+OOSasaVSlX
         t41Q==
X-Gm-Message-State: APjAAAVtWtl3HrKauvskQDPNpHXnJPh0w8OoYsW5QvevlR+C3Ztu3se+
        QNhUHbaAD04JypJo8Wh8+eACkA==
X-Google-Smtp-Source: APXvYqzwcmx1BCDmjWpt1tOLywaYXaCeovXL+ydA1c7dOKNeaGYAADnZWQbu/jN5GlJF+0Dyzy9HYA==
X-Received: by 2002:a02:8816:: with SMTP id r22mr43623986jai.60.1563391811445;
        Wed, 17 Jul 2019 12:30:11 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
        by smtp.gmail.com with ESMTPSA id l2sm17528673ioh.20.2019.07.17.12.30.10
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 17 Jul 2019 12:30:10 -0700 (PDT)
Date:   Wed, 17 Jul 2019 12:30:10 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Yash Shah <yash.shah@sifive.com>
cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        mark.rutland@arm.com, palmer@sifive.com, aou@eecs.berkeley.edu,
        sachin.ghadi@sifive.com
Subject: Re: [PATCH] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
In-Reply-To: <1561097422-25130-2-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1907171228560.22190@viisi.sifive.com>
References: <1561097422-25130-1-git-send-email-yash.shah@sifive.com> <1561097422-25130-2-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 21 Jun 2019, Yash Shah wrote:

> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Dropping this one until it's updated to align with whatever you pick for 
the new driver DT compatible string, per

https://lore.kernel.org/linux-riscv/1558611952-13295-1-git-send-email-yash.shah@sifive.com/T/#me298e16b2feeb481116cca61b94e014433cf2977

Please send an updated DT patch at your earliest convenience so we can get 
it into the v5.3-rc series.


- Paul
