Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A7A365C330
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2019 20:44:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726076AbfGASoc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Jul 2019 14:44:32 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:37674 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726316AbfGASoa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Jul 2019 14:44:30 -0400
Received: by mail-io1-f68.google.com with SMTP id e5so31152873iok.4
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2019 11:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=bSTnHtp/qhRiiFxmYq0H9zpn3MvujD6lIHKJwuiBfis=;
        b=VENu4NGbxX9bBv++0v0xk7rmRY0ned7O9Ue/mAwONZX5N1UjMcBAqNDoKuUbB/1caz
         7UmBvWce/C5S9oDTfW41WbyUhEWe2f8u18HrIOOSGlD+co1L/cmNyAENRbntBgt3FcTv
         uZMsUdqQ9hnsysRafRhHNvLBpSJECP1e19Cugq4Lndm4L6xIPMu0fBvsKBCDr0YbWVEZ
         T8ARPO8vl1Eoh2y4JDMZFokvS5pGwxDtO/7m4WODds56U3ABCip2rfzGjcNuGZNDqfrS
         dADsLa5cjLoP7freLQErygWRw+405uFlBf5+0qsJzzBFdp0WswPHcKdROa0xAQjjZv2j
         UtIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=bSTnHtp/qhRiiFxmYq0H9zpn3MvujD6lIHKJwuiBfis=;
        b=jLTMQSCmdGh8UUbW1oHeIH1qOW87Fupx4Bf9zZB/V3D7PJI9n/eyA94FRL2cG1rIti
         lyOm6cjUyZVrAlaZuszx4xKfELKqMBKxxOaseUP4LWvjCwIMK4wWmG4nJYbIUrO3crsT
         zIGcGVGc+lwB/F4+putB21mZOLyrWIt+uIjkpCSkTELaZAlzWRpR4L7fLHcgrvwxWM8z
         qRFTce+24tQmd6v2NT5VU/4gwbTm9uX//i+E1G1TCnsWE619LWm3/dSXpX+AECJfM3w3
         tcsi2sBTB0TSuYBTRylZtEWlHD459jn8A9OHKfnnznXkQ9+FtmGdi1xOMGdRcyYlqkYT
         J9QA==
X-Gm-Message-State: APjAAAX0JjVg6Q4tF3hXB2In5T+YeiAbovPR4vyWszcDMkpExCer7Rmu
        kaM3zfagAbWf2hiYQDuUe7jDTQ==
X-Google-Smtp-Source: APXvYqy4v6fZ9ogTn8bf8AazDvAe8JAZOIcDVtOTmJRQqIHjzLDu5ONK3oMbH8yyVfz/V3hVwiftDQ==
X-Received: by 2002:a5d:904e:: with SMTP id v14mr26401863ioq.61.1562006668920;
        Mon, 01 Jul 2019 11:44:28 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
        by smtp.gmail.com with ESMTPSA id f26sm9796697iob.4.2019.07.01.11.44.28
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 01 Jul 2019 11:44:28 -0700 (PDT)
Date:   Mon, 1 Jul 2019 11:44:27 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Atish Patra <atish.patra@wdc.com>
cc:     linux-kernel@vger.kernel.org,
        Jeremy Linton <jeremy.linton@arm.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Ingo Molnar <mingo@kernel.org>,
        Johan Hovold <johan@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-riscv@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        Morten Rasmussen <morten.rasmussen@arm.com>,
        Otto Sabart <ottosabart@seberm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Will Deacon <will.deacon@arm.com>,
        Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V 
In-Reply-To: <20190627195302.28300-1-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1907011143520.3867@viisi.sifive.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Atish

Looks like patches 1, 6, and 7 are missing your Signed-off-by:.  Can I add 
those?


- Paul
