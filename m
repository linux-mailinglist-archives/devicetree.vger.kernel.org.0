Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A41BE70A36
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 21:59:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732282AbfGVT7s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 15:59:48 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:38690 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729965AbfGVT7r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 15:59:47 -0400
Received: by mail-io1-f67.google.com with SMTP id j6so1581179ioa.5
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 12:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=/OH/wTTBC4X8SVdlUJnb/Ot3whBKsHxdPt8gk14iyRI=;
        b=IJ79AYkgljjvskCTjQpSnN1VcH07Jaf0C4IA1a0choaa0aexD+z3BEclu3qrc9dm3n
         lBK21ZNYuMibEYuUgygq+2qS2ESPxBGKUwXvVigWSpRh9CwNlh/ZUXg/MmPBdBUR6ATS
         YBi5nY2XkwV5ILZWw6+gXVamBXBWc7oqg1/guzrXAmEDgJgrn/KAyHYEd1jIUJ7RWN3s
         uWLy87j5aKFkEkCNP7wNl61lZeUBVV7FlRWlRE/C0p1pHbYXu1oqr8iyYY/GrvFZMAUx
         IvaNafhhR7IsprcZ8ibKROvteizgzd7sF6M2zQzbCOghqLdEORkE8voLl1fPRzEn0Eq3
         oqmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=/OH/wTTBC4X8SVdlUJnb/Ot3whBKsHxdPt8gk14iyRI=;
        b=BC8cvY/ZwpH6xLzR5xo1ot2yNu7gCxaz1pDcEeZB9PxmwAHGwPpAe9xXkP+XQri47I
         wMJ4GkdzFzB6rjKahLrGAdeK/ycieHk2CeY97GkUYbwKV0wSwyqjiQ49GltcDCZzeT1E
         B8QQVyguMMapXPERuHuP09CcPpb7rub/OnaeTKSuoU7qkInGSUXBFEdreDEZfkFGkymx
         eIAW02rzhr2EAJiEXyLxFhKAb/TmSstPLHBz+zG0TrA4PAQr9PSp24jhTZFGZbS8rp8P
         QsTL+snMYQmgEePDk81THIn16S8xNITaAm6Q5PqkGcPsECxHHk/qSAliWymcEOkdYnFt
         vNHw==
X-Gm-Message-State: APjAAAUuv7km3n5xwmnCRjCz0+ZougmRwddeANDMeB3u70vXMNQWZJUJ
        y3iumw81ndi0SevLalUG6NgXfg==
X-Google-Smtp-Source: APXvYqzscqmldHBLHAIijDkbQwm+paiGghQKVRTUe6alP23cCGUxgKPjiGuPPJhasKI7fp5io+M8rg==
X-Received: by 2002:a6b:8f47:: with SMTP id r68mr69303919iod.204.1563825587225;
        Mon, 22 Jul 2019 12:59:47 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
        by smtp.gmail.com with ESMTPSA id m20sm39336195ioh.4.2019.07.22.12.59.46
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 12:59:46 -0700 (PDT)
Date:   Mon, 22 Jul 2019 12:59:45 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Yash Shah <yash.shah@sifive.com>
cc:     davem@davemloft.net, robh+dt@kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, mark.rutland@arm.com,
        palmer@sifive.com, aou@eecs.berkeley.edu,
        nicolas.ferre@microchip.com, ynezz@true.cz, sachin.ghadi@sifive.com
Subject: Re: [PATCH 1/3] macb: bindings doc: update sifive fu540-c000
 binding
In-Reply-To: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1907221259300.5793@viisi.sifive.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Jul 2019, Yash Shah wrote:

> As per the discussion with Nicolas Ferre, rename the compatible property
> to a more appropriate and specific string.
> LINK: https://lkml.org/lkml/2019/7/17/200
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>

- Paul
