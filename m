Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1E9C763D90
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2019 23:54:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729671AbfGIVyG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jul 2019 17:54:06 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:42603 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727026AbfGIVyG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Jul 2019 17:54:06 -0400
Received: by mail-io1-f68.google.com with SMTP id u19so237150ior.9
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2019 14:54:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xmrretf9so625/r9oQyVV2bhYZbR6JyVFpLUt2/TZWs=;
        b=AyEhEYLYqPA+//A959XhibUuKQ895j4us3XO3sAUbwrW1u7I9UwDb53uw7GV+krVTk
         cL37wR9AZ/1EWQgimIjjf5YijUYKJrgSz91OHzk5GVz8NG6T3A5yMrzHRb9ZXfvUsVmX
         NdNJ1xwnFG3A5VyL4RNeVyf2UPmZtgsOYtiT+aMk7vR9uXCUFh7cn4IlZ0Wr0xQFyaav
         J77JmPhdxLL5JPnOFEk1o2kjApwD46RQSCWF2PCUylZLsVjf5oqvgCfMDFbS4li4cfDK
         iiEo5/lRy0yaWouzwlcD8BCtA7tsmkFHFxgpeAMAfe0RsAYEyOAwG2N1JKzPonkwXq48
         /xvg==
X-Gm-Message-State: APjAAAXRc35bXnmfehsAt66pDgwiwNtGVEYsL+C0LEACtAWMUuNa6p5i
        ZxJA0bKwAdRGYmXvlzI08Q==
X-Google-Smtp-Source: APXvYqwFzSSuDx+5lqH/e+gK6KTdulV8YrpGBepW3tseIXWeIpv+Cjr9edVBfN6pzKj5YhysbXuUfw==
X-Received: by 2002:a6b:fb02:: with SMTP id h2mr26316607iog.289.1562709245418;
        Tue, 09 Jul 2019 14:54:05 -0700 (PDT)
Received: from localhost ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id f17sm39580ioc.2.2019.07.09.14.54.04
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 09 Jul 2019 14:54:04 -0700 (PDT)
Date:   Tue, 9 Jul 2019 15:54:03 -0600
From:   Rob Herring <robh@kernel.org>
To:     Ian Campbell <ijc@hellion.org.uk>
Cc:     devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Andre Przywara <andre.przywara@arm.com>
Subject: Re: devicetree-rebasing.git updates pausing for a couple of months
Message-ID: <20190709215403.GA26049@bogus>
References: <3bc28d409a6e09046c001611972cc3c33b1695e3.camel@hellion.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3bc28d409a6e09046c001611972cc3c33b1695e3.camel@hellion.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 21, 2019 at 01:01:27PM +0100, Ian Campbell wrote:
> Hi all,
> 
> I've no idea if anyone actually uses it any more, but the split out
> devicetree only git repo [0] is not going to receive any new updates
> for a little while (likely 1-2 months) while I relocate to another
> country.

Can you sync your move to the kernel release schedule? JK

Seriously, I've been wondering if we could turn this into a Gitlab CI 
job instead. Then it's not solely up to you to run it.

Rob

> 
> Ian.
> 
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git/
> 
