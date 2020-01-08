Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3851B134870
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 17:49:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728511AbgAHQt1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 11:49:27 -0500
Received: from mail-oi1-f193.google.com ([209.85.167.193]:39908 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726401AbgAHQt1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 11:49:27 -0500
Received: by mail-oi1-f193.google.com with SMTP id a67so3209837oib.6
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2020 08:49:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HKRuP7odiUozzLKAizXkP/NVcvz1pjhKor6f3Gtuf1U=;
        b=afa78yhn5X5PUcQTcXump7jHi1LzItuqrqmthtoKxZlZtxnJT5a2QKBYn0QUjViMq7
         dlVW03MM6wHKU584+J9sANSmhopaaACWIQMW04aqiRSMZIb5iqfz7qgy+k8AxnBWi8xu
         JHyQ4W0Yyz6eBuEElTBEA3oVvomEu3oBgZfSu5AelYX/bsUhUDLibhn/TCqh+6OLacZM
         MyyxobZZEsJkY0EKCS1KHbj9cHIZrwveLdZt2BYRSsZiOIpr6Ak083DmLE1o8NT5ACzO
         R0Cv967b/oKPEGLjyZ0pvsds6gFSX0S/Ggc6TPY+iKawQRgE7wiMlFE3cDYInC0NnAaZ
         Trfw==
X-Gm-Message-State: APjAAAVXJHywNN+5Tn9a7e3e4aVij5DrDawmckwshB/pqwKpMTGvXRFi
        ktOF2n5UPfj8uaQ/3+cvPJ2yEz0=
X-Google-Smtp-Source: APXvYqwQ7Ze1vczuiPJ/BU6XO89JHMIw8oET9FQ4+JfYQ1UFhrOPnli5IMkuAVrMm5AlM03Z6C5XOA==
X-Received: by 2002:aca:ad11:: with SMTP id w17mr4003908oie.85.1578502165956;
        Wed, 08 Jan 2020 08:49:25 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id x15sm1273568otq.30.2020.01.08.08.49.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 08:49:25 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2219a4
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 08 Jan 2020 10:49:24 -0600
Date:   Wed, 8 Jan 2020 10:49:24 -0600
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] of: overlay: Remove blank line between assignment and
 check
Message-ID: <20200108164924.GA26592@bogus>
References: <20191231134644.28119-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191231134644.28119-1-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 31 Dec 2019 14:46:44 +0100, Geert Uytterhoeven wrote:
> There used to be blank lines between assignment and check of the
> __of_changeset_revert_entries() result, to make the phandle cache
> management operations stand out.  After the removal of those operations
> in commit 90dc0d1ce890419f ("of: Rework and simplify phandle cache to
> use a fixed size"), there is no longer a reason to have such a blank
> line.
> 
> Remove the blank line, to rejoin visibly the status assignement and
> check, and to match coding style.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/of/overlay.c | 1 -
>  1 file changed, 1 deletion(-)
> 

Applied, thanks.

Rob
