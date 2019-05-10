Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E59C119786
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 06:27:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725927AbfEJE13 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 00:27:29 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:38919 "EHLO
        mail-qt1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725903AbfEJE13 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 00:27:29 -0400
Received: by mail-qt1-f196.google.com with SMTP id y42so5149978qtk.6
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 21:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ngq08Wlyg2H31lwwSV/j8xQrFKwzvO2qP6ztkd7Nr28=;
        b=fuMNIjVG7c7hl9TqmLZaCgk9uw8zCqNkHPHTQf2dgfrBbILw0WaZg9/92di/69XTYw
         mEL0Bk2U3l/9dTL8S03K1TeKwNrvGPhaqPYYhh6U9R3UWp9e00qH5XiAYyvKTbK2nCU3
         sS43C8EHGgEYjTPYiSnIPhJod4FG7Rk+TYhGI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ngq08Wlyg2H31lwwSV/j8xQrFKwzvO2qP6ztkd7Nr28=;
        b=b27eJMdpkDpd63CARJAk0uxuB8DqyBh5hTadotzPv4SBMN9WpxwjSbaXmSASvqeHmT
         ESOmFijdo7R7EAw8N23yZssUx42YksKzC/iAHbYBz3Kx6JziVLvO6IoqmoM3TnDyg/t5
         EEPmy04voUk7Qyl0GLCGpgBEvqf3MWeyu6oWnDY1L31y8elWLm/FEbnu6SrL5gr8Tbaw
         vDK29p0pW5Chp9uP/JOYaoEVfcA1dwx2tCPQxTcaUKSCxplnShI0T6ZtZx/9hz7Xv632
         PM2haI3we5Pw4YX2D6j6/bQGtrJtrPUrrvFnTMlp5ZVqnlxkaAv1spwugJAd1xsAM9dN
         gBdA==
X-Gm-Message-State: APjAAAXUFwhIoSjn2fHMl+Z2IQc/6FWOSBAAlOdVe4gb+R0acCUsA4L5
        3wSZRdKOr5nxZGoHWYCLgmFAAh6dY/gsXyr5VLYILA==
X-Google-Smtp-Source: APXvYqwwzIn/YJ/0P0Vb+0s8M37PUufsc0Gp9hafSnPJ9qzKi2oOspaUm7VkSvnkEjICaSYyxOJsDM038OFvfuU0Nho=
X-Received: by 2002:a0c:d985:: with SMTP id y5mr7230641qvj.80.1557462448871;
 Thu, 09 May 2019 21:27:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org> <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
In-Reply-To: <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Fri, 10 May 2019 12:27:02 +0800
Message-ID: <CAJMQK-i-0RgdQEniqaKubdjF-dpd1JOCWy7DOPDfN33EqgL5iA@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To:     Rob Herring <robh+dt@kernel.org>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Michal Hocko <mhocko@suse.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Architecture Mailman List <boot-architecture@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 8, 2019 at 3:47 AM Rob Herring <robh+dt@kernel.org> wrote:

> >  Documentation/devicetree/bindings/chosen.txt | 14 +++++++++
>
> Actually, this file has been converted to json-schema and lives
> here[1]. I need to remove this one (or leave it with a reference to
> the new one).
>

Hi Rob,
I can't find where the new document is. Can you help point it again? Thanks.
