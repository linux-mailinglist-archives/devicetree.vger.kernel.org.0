Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 834EA9847E
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 21:32:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730226AbfHUTcE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 15:32:04 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:39857 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729757AbfHUTcD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 15:32:03 -0400
Received: by mail-ot1-f66.google.com with SMTP id b1so3171518otp.6
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 12:32:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=s4Vc8y3V03J7skcBEskidCxtsue4N9iQiQdyhSa0WOE=;
        b=NvNrNwg2NwhsTs5nhhYBFqso5GXtB8BYW8i5sTGbWKeLMUeZNiCP+xFWqOgTRtuECe
         UbOPY/IsdAcAgYrnKT0q7WfmY/iYhm+6mj6nKtH6d2Bhg23f7KpMg5qtZPtczCZNPHEl
         Ywtz7Av1ZEUY299iJR1pQRJjnQEvxG70S2a0JRRAr4EeV2uu02SDk1/SRUvkkBZ0aBe1
         bWCeQN1iNkysYRK3CsKIPNayFGIzg/caKUn/bb4szqYkN7uZwf9EeA/n3vK67b7v3Qds
         +NgDiRSlITHCnYvqe4bSJkeWKGU/gZ5vo0EyHCNlm+6ME2LwL2KQkM0TlD4peDf225uA
         N0zQ==
X-Gm-Message-State: APjAAAUFNceTm6SuXgOkmMQCv2Q65NafkURxW8TakCnqlVIEFXooGKwa
        P82gHRJyEh5kl8M0Mc7Cww==
X-Google-Smtp-Source: APXvYqzQ7Kb2tiL08aa4/qQnyhzaDBpAPjUvUrvBtqsA6ToQt+7diBij4UB/Ls4sjC9ZnqtiJveO1g==
X-Received: by 2002:a9d:a06:: with SMTP id 6mr29280133otg.127.1566415922509;
        Wed, 21 Aug 2019 12:32:02 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 65sm7763058otw.2.2019.08.21.12.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 12:32:02 -0700 (PDT)
Date:   Wed, 21 Aug 2019 14:32:01 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        linux-arm-kernel@lists.infradead.org,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>,
        Ben Peled <bpeled@marvell.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 03/20] dt-bindings: ap80x: replace AP806 with AP80x
Message-ID: <20190821193201.GA32068@bogus>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
 <20190806145500.24109-4-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190806145500.24109-4-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  6 Aug 2019 16:54:43 +0200, Miquel Raynal wrote:
> From: Ben Peled <bpeled@marvell.com>
> 
> Rename the text file and update "AP806" into "AP806/AP807" where
> relevant.
> 
> Signed-off-by: Ben Peled <bpeled@marvell.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  ...-controller.txt => ap80x-system-controller.txt} | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>  rename Documentation/devicetree/bindings/arm/marvell/{ap806-system-controller.txt => ap80x-system-controller.txt} (91%)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
