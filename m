Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 46CFF383A0
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 07:00:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726107AbfFGFA4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 01:00:56 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:42896 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726010AbfFGFA4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 01:00:56 -0400
Received: by mail-pl1-f196.google.com with SMTP id go2so332830plb.9
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 22:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=GNyxhCfsORr2e6M8vPY8+L5gnSVQwdktACAugcErG1s=;
        b=TNIHxn+tFESTWzJW+ZyuBRPd3t6RRyEnrDKP4AiawT/1wDdQyioePTAqbomtN0wWN2
         y1c0b+3ePB/bOyDr+kf8D84Vc1txJKud22aFGd2KVgCwyqnLylvrnJWDrXvj33vqGOpN
         OjLtZ+kqyLxgTCVJxkSpI71SYb/v4U6fH1gaOaHKHbcc70mxuZu/GuXAVp81oMqIknE8
         2kQSUVCdXR68/ViRhMKfv/UXz7kH2otBS6Bo8LA9tb6J9JCEoXc5+bFUv1vYHdHC0Lt7
         iVr6dKcezKhC5Aj5b9OFbBiu3Cf7MLLnlZu19VtFVi87q4n7ztQFWsGbPzSbdF/5GGoX
         HjWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=GNyxhCfsORr2e6M8vPY8+L5gnSVQwdktACAugcErG1s=;
        b=Vuly3OgPFZJTYgn8fUv3W9Wxfi8hrVklMmTKv8BaDMHNW3Qdby0nemuQhrVdq8ns3I
         wx2PDaKKsvgITQkWQbC8yX9UeeyDLfyMXJ/wVDVIgTpOBbxaZBO5srmeEsCrexqq8oYJ
         KkB1tZlNMqzpPa1cFoNWjoeJ1hptSXY5OfMBUsJL0PFEV1sgqgKkWmVAr/Om2Ac+e9Dl
         voQ2u9D5BBNmiGSl0MPl8mGxWUqRFoScoaOfvdzo6TzA88lyE17Yv2P9EmzOvyuZsi4u
         Osz7LBCYgF1N6633caGO7473CIHInUCgyCzKdCK6STrtD854G91mqIlBcVIv0d7zsQk5
         RYTA==
X-Gm-Message-State: APjAAAV6AeTEFI8KlzwkQ4DMdyJ+bBdCEOB5MPME/TSy+qo8an1m1FH8
        fSbNXJeliHN4OTwVco+ZtjmE2g==
X-Google-Smtp-Source: APXvYqyUw+DSN9BiUBvaRMwQnFBxQ6SFZJjWJHMVUssQoXJy4hDGI7eMn36g4CBZ3Y53pZ456i1wZA==
X-Received: by 2002:a17:902:d715:: with SMTP id w21mr54153246ply.234.1559883655599;
        Thu, 06 Jun 2019 22:00:55 -0700 (PDT)
Received: from localhost ([14.141.105.52])
        by smtp.gmail.com with ESMTPSA id 10sm811396pfh.179.2019.06.06.22.00.53
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 06 Jun 2019 22:00:54 -0700 (PDT)
Date:   Thu, 6 Jun 2019 22:00:51 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Atish Patra <atish.patra@wdc.com>
cc:     linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Ingo Molnar <mingo@kernel.org>,
        Jeremy Linton <jeremy.linton@arm.com>,
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
        Thomas Gleixner <tglx@linutronix.de>,
        Will Deacon <will.deacon@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 5/7] RISC-V: Parse cpu topology during boot.
In-Reply-To: <20190529211340.17087-6-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1906062159380.28147@viisi.sifive.com>
References: <20190529211340.17087-1-atish.patra@wdc.com> <20190529211340.17087-6-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 29 May 2019, Atish Patra wrote:

> Currently, there are no topology defined for RISC-V.
> Parse the cpu-map node from device tree and setup the
> cpu topology.
> 
> CPU topology after applying the patch.
> $cat /sys/devices/system/cpu/cpu2/topology/core_siblings_list
> 0-3
> $cat /sys/devices/system/cpu/cpu3/topology/core_siblings_list
> 0-3
> $cat /sys/devices/system/cpu/cpu3/topology/physical_package_id
> 0
> $cat /sys/devices/system/cpu/cpu3/topology/core_id
> 3
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Acked-by: Sudeep Holla <sudeep.holla@arm.com>

Looks reasonable to me.

Acked-by: Paul Walmsley <paul.walmsley@sifive.com>

We're assuming, on the RISC-V side, that these patches will go in via 
another tree.


- Paul
