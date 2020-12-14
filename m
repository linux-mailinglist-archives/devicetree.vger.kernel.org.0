Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 419712DA29D
	for <lists+devicetree@lfdr.de>; Mon, 14 Dec 2020 22:40:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725816AbgLNVjU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Dec 2020 16:39:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727156AbgLNVjJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Dec 2020 16:39:09 -0500
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BFE2C0613D3
        for <devicetree@vger.kernel.org>; Mon, 14 Dec 2020 13:38:29 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4Cvvry4RBnzQlLc;
        Mon, 14 Dec 2020 22:38:26 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=loebl.cz; s=MBO0001;
        t=1607981904;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=1rraB9SwAjxQ2RuxRY86pzFMTLlNMInHVswJeWupyM0=;
        b=DER2dBVtHIH26yUgbygU8sshNcRnBhmlWWzXAkxyOqpm3nd32aDjBE9xBaS/1RB1V6o4Yp
        jiEtpkf2bN0KetmYvbzfeWhv7yf07oDgklkw8CdwqDjGU2ZKZBYwfXdRy+MUidM5BGkraV
        UuUpRhlvyAeEgZjGwdTecIHvsM0iPeVgtTrX9To85XrnBarl/+Mjgp9tJyuh+FWGwvZpvR
        WCzgdazLXTh/oezAJ62EDYpUQZ/gZ1ybhMNSKEys7DYnl99/kclId7OLESlqWe6WEa+S9T
        hCHXpspBan3oCDcYRwMXNctpfo3nFhjuLOgpQOki4T9vMqxoWGD8FWA5ae7zGQ==
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de [80.241.56.116]) (amavisd-new, port 10030)
        with ESMTP id zJ0PwFCzJv1J; Mon, 14 Dec 2020 22:38:24 +0100 (CET)
Date:   Mon, 14 Dec 2020 22:38:23 +0100 (CET)
From:   =?UTF-8?Q?Pavel_L=C3=B6bl?= <pavel@loebl.cz>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
Message-ID: <1087463930.53861.1607981903391@office.mailbox.org>
In-Reply-To: <20201214101730.ye5566a45gopxm7w@gilmour>
References: <20201212111429.286721-1-pavel@loebl.cz>
 <20201214101730.ye5566a45gopxm7w@gilmour>
Subject: Re: [PATCH] ARM: dts: sun8i: h2+: add support for Banana Pi P2 Zero
 board
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Normal
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -2.89 / 15.00 / 15.00
X-Rspamd-Queue-Id: 8D7CA1866
X-Rspamd-UID: 2ca98f
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> On 12/14/2020 11:17 AM Maxime Ripard <maxime@cerno.tech> wrote:

> Please send this to the proper recipients (get_maintainers.pl will help)

That's what I used. I've also greped Documentation for get_maintainer.pl and read various bits there. And looking at headers of other patches I'm still not sure.

Am I supposed to send the patch to all people in the script output and just Cc the list?

Pavel
