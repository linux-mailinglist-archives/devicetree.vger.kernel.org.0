Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A1AB020D5A
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 18:49:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727066AbfEPQtR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 12:49:17 -0400
Received: from mail-qt1-f194.google.com ([209.85.160.194]:39477 "EHLO
        mail-qt1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726808AbfEPQtO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 12:49:14 -0400
Received: by mail-qt1-f194.google.com with SMTP id y42so4711816qtk.6
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 09:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=V54eRnKwdjS+PEKbXuK6UCgdmon3FdybUlySjzqEJGo=;
        b=Y7WJlt4bLjAJ4WhWIbMzJ/8PhricDREUZCU7Q1/HTZvvFSjXhMw6Fj3NYJLMxnF5H3
         xFmNwRnXYTntWpRu3Lpdbvwa5tqci5Xe358XawRq25kd+KE+5NovF5rGFK6+pyVUKFjE
         t5pWcHvFVNZlhWAdiIbzyX+khalrXvVMxRhdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=V54eRnKwdjS+PEKbXuK6UCgdmon3FdybUlySjzqEJGo=;
        b=RtnMhzI9KHGIfofRnSX6UOxmkhbbXV0dU5pXhwfR/l4VUFaFm0Wjb4cY0iDjbIEOdI
         Wja33o5yqFPOoxrbeK2TsJdqOEwB7Qc/Fl3qabCFyJdNkpBJiALMRrJWMaLEB0HCKkcz
         LW8ypYT155Pg5Y5GExzv61+dplWs1EFqmiy1rCAoUN0E9jlJ/CPOv/QIW/X8a6+KlZkD
         vP3LLFcXsqyxVBMEskWqvFLbL5jNEqMw0IfaUjccFACjFfxCeTxN4I63qVdRPRQ650yl
         /gvjXYMIkHiuM9rryayMiKWF3+DbXtiFpF3/CNAlm2LnsfkxTo+YxoDwYjR+IqPY2CyK
         4M+Q==
X-Gm-Message-State: APjAAAU65ERSAKugWAMsa++7nNMfKurTYSP/z00i3lb+1f1donFHnNxM
        +VVGkH6bir+Mq9nLyQ2LWZJkrtyqoPq0wWAm66+n5g==
X-Google-Smtp-Source: APXvYqy+/6RfTqO4HVKK22HJ4SUb9lK/prYvmIxZ0Cl7qxFHUR3oqhJi1qikDD7OHXt/c+stN5QSeCyFVHsMZ9dZnA4=
X-Received: by 2002:a0c:8aad:: with SMTP id 42mr40983967qvv.200.1558025353386;
 Thu, 16 May 2019 09:49:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190516102817.188519-1-hsinyi@chromium.org> <20190516102817.188519-2-hsinyi@chromium.org>
 <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
 <CAJMQK-jrJQri3gM=X6JRD6Rk+B5S4939HJTptrQMY64xEWr1qA@mail.gmail.com> <CAL_Jsq+dVg9E_EzpoC4Bz1ytUckDGXUcEJyU5pV2HS6rZuKmHA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+dVg9E_EzpoC4Bz1ytUckDGXUcEJyU5pV2HS6rZuKmHA@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Fri, 17 May 2019 00:48:47 +0800
Message-ID: <CAJMQK-hzjSBf2-QFMn52Sa8fwvm5-gaddzBOudfEc1neR2rwnA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: implement update_fdt_pgprot()
To:     Rob Herring <robh+dt@kernel.org>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 16, 2019 at 11:32 PM Rob Herring <robh+dt@kernel.org> wrote:

> Doesn't kexec operate on a copy because it already does modifications.
>
Hi Rob,

This patch is to assist "[PATCH v3 3/3] fdt: add support for rng-seed"
(https://lkml.org/lkml/2019/5/16/257). I thought that by default
second kernel would use original fdt, so I write new seed back to
original fdt. Might be wrong.

** "[PATCH v3 3/3] fdt: add support for rng-seed" is supposed to
handle for adding new seed in kexec case, discussed in v2
(https://lkml.org/lkml/2019/5/13/425)

By default (not considering user defines their own fdt), if second
kernel uses copied fdt, when is it copied and can we modify that?

Thanks!
