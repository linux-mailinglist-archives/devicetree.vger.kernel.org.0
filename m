Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D44C283D04
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 23:54:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726494AbfHFVyv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 17:54:51 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:39228 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726052AbfHFVyv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 17:54:51 -0400
Received: by mail-ot1-f68.google.com with SMTP id r21so90390971otq.6
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 14:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=e0N0ZZ7gbRhdL+UK8EX1dMgG/3bO/cb7jXRFzExUL4k=;
        b=nC2RK+wjbSKbABdylLiYJMYOsFyEaY+iXsRPvSPywyopW3IGcH2lgAojRCNmpiStVL
         zZYaAtNAnpiMxnK1MpKnaUChgb3VqZ5jtmBfmbv6GIQXd4RHouKZ1RwGKGSFTwENK2Gu
         CdYxLb5F44BiYphtIhsfrdBL/XR3rPypAqjPWi4GEwj8Ql8mYTJvQFS/5l82Xbp2sQNU
         IJfybu+HiA8Rzx1717EYb+nbJVTaOUTfNhq4nq4vsiwoLg/bcTL6duKfQwWMfvzOxFzJ
         gC6aZfHv2hwKrTzOH0+vWrpHBmFbcJylo+X4DmM0Gl7/X40VjmJfhWM9fhWbHYSpk2XK
         crzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=e0N0ZZ7gbRhdL+UK8EX1dMgG/3bO/cb7jXRFzExUL4k=;
        b=sHitjnNnRZIpu59VxDR+bh1uvgzQh5+3+iIB30rlyAQtIhjuKnYn0lypiVCSbSKEy+
         XwUXwKLsmsRUzUqQG9tO2mj+E8F4+2ayMjoFm4z7ZL++l7wka6BOOt6KaVtAKjqxL2wg
         FSJ4jeT/1lnWuDh+zxHmD2hWxLhe72celLGbmINz/89tbi/bIvbbrJNXVHl7sKFdcmVA
         fS5kwyMWMpaxVuoJB+E+JuUCFYOtMX0jbJzr9PX/kQDUF6rd+Q5EiRsrrHj3SpUEuidl
         49CSU7RPzqw8eW+b3VFyCPvvhUX/Dm59I3FBKz+tuxUttt/74S0PDD1HE/9MngcAjnu9
         Swiw==
X-Gm-Message-State: APjAAAW/SieRXYuv73R5iQzXOQOyG3W8qw7JDcnLgTpoQDaHrhdBkYwz
        hlxRoiMy1SAwL7LBGNcxFRmePA==
X-Google-Smtp-Source: APXvYqzPVNaDRTXzYBHYAB33LLYEDUma/TzBsb06XC691qDzmkvhh49XRDXuGu0MTeDKJrnOkXJJAg==
X-Received: by 2002:a6b:1ca:: with SMTP id 193mr6162600iob.264.1565128490422;
        Tue, 06 Aug 2019 14:54:50 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
        by smtp.gmail.com with ESMTPSA id e26sm71330428iod.10.2019.08.06.14.54.49
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 14:54:50 -0700 (PDT)
Date:   Tue, 6 Aug 2019 14:54:49 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>
cc:     linux-kernel@vger.kernel.org, Alan Kao <alankao@andestech.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        devicetree@vger.kernel.org, Enrico Weigelt <info@metux.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Johan Hovold <johan@kernel.org>,
        linux-riscv@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v4 2/4] RISC-V: Add riscv_isa reprensenting ISA features
 common across CPUs
In-Reply-To: <20190803042723.7163-3-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1908061452570.13971@viisi.sifive.com>
References: <20190803042723.7163-1-atish.patra@wdc.com> <20190803042723.7163-3-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Anup, Atish,

On Fri, 2 Aug 2019, Atish Patra wrote:

> From: Anup Patel <anup.patel@wdc.com>
> 
> This patch adds riscv_isa integer to represent ISA features common
> across all CPUs. The riscv_isa is not same as elf_hwcap because
> elf_hwcap will only have ISA features relevant for user-space apps
> whereas riscv_isa will have ISA features relevant to both kernel
> and user-space apps.
> 
> One of the use case is KVM hypervisor where riscv_isa will be used
> to do following operations:
> 
> 1. Check whether hypervisor extension is available
> 2. Find ISA features that need to be virtualized (e.g. floating
>    point support, vector extension, etc.)
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

Do you have any opinions on how this patch might change for the Z-prefix 
extensions?  This bitfield approach probably won't scale, and with the 
EXPORT_SYMBOL(), it might be worth trying to put together a approach that 
would work over the long term?


- Paul
