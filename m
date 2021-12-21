Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB85247C88B
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 22:02:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235661AbhLUVCX convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 21 Dec 2021 16:02:23 -0500
Received: from lithops.sigma-star.at ([195.201.40.130]:43740 "EHLO
        lithops.sigma-star.at" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234156AbhLUVCX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 16:02:23 -0500
X-Greylist: delayed 420 seconds by postgrey-1.27 at vger.kernel.org; Tue, 21 Dec 2021 16:02:23 EST
Received: from localhost (localhost [127.0.0.1])
        by lithops.sigma-star.at (Postfix) with ESMTP id 206BB62DA5EA;
        Tue, 21 Dec 2021 21:55:22 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
        by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id vXagFKvHTWqH; Tue, 21 Dec 2021 21:55:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
        by lithops.sigma-star.at (Postfix) with ESMTP id D4C5862DA5F1;
        Tue, 21 Dec 2021 21:55:20 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
        by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id PzDNqqkt_Mly; Tue, 21 Dec 2021 21:55:20 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
        by lithops.sigma-star.at (Postfix) with ESMTP id ACC7462DA5EA;
        Tue, 21 Dec 2021 21:55:20 +0100 (CET)
Date:   Tue, 21 Dec 2021 21:55:20 +0100 (CET)
From:   Richard Weinberger <richard@nod.at>
To:     Vincent Whitchurch <vincent.whitchurch@axis.com>
Cc:     Jeff Dike <jdike@addtoit.com>,
        anton ivanov <anton.ivanov@cambridgegreys.com>,
        kernel@axis.com, linux-kernel <linux-kernel@vger.kernel.org>,
        linux-um <linux-um@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
Message-ID: <342397676.191011.1640120120622.JavaMail.zimbra@nod.at>
In-Reply-To: <20211208151123.29313-1-vincent.whitchurch@axis.com>
References: <20211208151123.29313-1-vincent.whitchurch@axis.com>
Subject: Re: [PATCH 0/2] Devicetree support for UML
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF95 (Linux)/8.8.12_GA_3809)
Thread-Topic: Devicetree support for UML
Thread-Index: Id4ge0Mfs4XDpGWkd/TYkR1CA9d4zw==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Vincent,

----- Ursprüngliche Mail -----
> Von: "Vincent Whitchurch" <vincent.whitchurch@axis.com>
> An: "Jeff Dike" <jdike@addtoit.com>, "richard" <richard@nod.at>, "anton ivanov" <anton.ivanov@cambridgegreys.com>
> CC: kernel@axis.com, "linux-kernel" <linux-kernel@vger.kernel.org>, "linux-um" <linux-um@lists.infradead.org>,
> "devicetree" <devicetree@vger.kernel.org>, "Vincent Whitchurch" <vincent.whitchurch@axis.com>
> Gesendet: Mittwoch, 8. Dezember 2021 16:11:21
> Betreff: [PATCH 0/2] Devicetree support for UML

> This series add support for passing a devicetree blob to UML.  It can be used
> for testing device drivers.

Nice feature.
Code looks good so far. But while building I'm facing this warning:

WARNING: unmet direct dependencies detected for OF_EARLY_FLATTREE
  Depends on [n]: OF [=n]
  Selected by [y]:
  - UML [=y]


Please note that my UML config has CONFIG_OF=n.

Thanks,
//richard
