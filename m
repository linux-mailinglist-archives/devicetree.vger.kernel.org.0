Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 348653148F3
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 07:36:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229704AbhBIGgH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 01:36:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230423AbhBIGf7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 01:35:59 -0500
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com [IPv6:2607:f8b0:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3ABDC061786
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 22:35:18 -0800 (PST)
Received: by mail-il1-x12b.google.com with SMTP id y15so15129131ilj.11
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 22:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1yfWtyKyTZvhHLdRd0Os+HgXY0IXloCRl6/1X6y49yY=;
        b=I8sAs6STSD3viziWc9zjdGpRV2Ij0huuBcH4DTqpEpqza+Sa89+jcmi0lEr6QyU3Yc
         L7rP/rH0/RfRBI83gH4R47SJOVgSrDffjCf/VWsaIa4tSZ3K01/puYHwXeA+73O+NMbj
         Mayn3mIGAEUCdMMblgZt8JrLoIUQfDCTzzdMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1yfWtyKyTZvhHLdRd0Os+HgXY0IXloCRl6/1X6y49yY=;
        b=t3VKZkz6dfpySnb7gjrC1UgmVc3snuAJjI1ZHh20Xnt6UWZEm8aUGxGs0URjPlk+q+
         MiWEBLjD9bx5FtMkIW9Cb5Lc9gPdt9Saxo2R0BB3W070wgXxULTMac6N5VSi0YT8EsWZ
         pr1xJNHLvPef4pxcExegA0hXknsiDLoK4cMvl2kTELuaQRnUPjxb4/WSeoYcP6I22fVY
         H7vtxb3rifG1Fo1zZWiifhhUpCMcgAivyVJOMa1WW3DtiGjFIrHG32VT0Eac//tPwK5X
         gx3yAmi5walEU8YXFONLFqoTWJ5asb1wqFx9fhGZrbUMoyuX3h7e8WFIuZDc0WG8MIGc
         iWVA==
X-Gm-Message-State: AOAM531NBUhMnMk19UGYklc9m09mCC+7XYKhJqYdTsorYoN0wY93En5s
        di8eWRlftC8gU3eax3wzUU5iK74rs2cDoA==
X-Google-Smtp-Source: ABdhPJxCShmL5sZ16eRBG1Kg67yrtoCg8A1MVMBOtmXhh4ENfqimmScksQ5CEQL62Jl0B09xOhM0Ng==
X-Received: by 2002:a92:b003:: with SMTP id x3mr6086131ilh.15.1612852517972;
        Mon, 08 Feb 2021 22:35:17 -0800 (PST)
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com. [209.85.166.169])
        by smtp.gmail.com with ESMTPSA id 4sm10270625ilj.22.2021.02.08.22.35.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Feb 2021 22:35:17 -0800 (PST)
Received: by mail-il1-f169.google.com with SMTP id u15so162257iln.12
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 22:35:17 -0800 (PST)
X-Received: by 2002:a6b:144c:: with SMTP id 73mr18274991iou.69.1612852048986;
 Mon, 08 Feb 2021 22:27:28 -0800 (PST)
MIME-Version: 1.0
References: <20210106034124.30560-1-tientzu@chromium.org> <d7043239-12cf-3636-4726-2e3b90917dc6@gmail.com>
 <CALiNf28sU1VtGB7LeTXExkMwQiCeg8N5arqyEjw0CPZP72R4dg@mail.gmail.com>
 <78871151-947d-b085-db03-0d0bd0b55632@gmail.com> <CALiNf29_PmLJTVLksSHp3NFAaL52idqehSMOtatJ=jaM2Muq1g@mail.gmail.com>
 <23a09b9a-70fc-a7a8-f3ea-b0bfa60507f0@gmail.com> <CAAFQd5DX=AdaYSYQbxgnrYYojkM5q7EE_Qs-BYPOiNjcQWbN1A@mail.gmail.com>
 <c7f7941d-b8bd-f0f3-4e40-b899a77188bf@gmail.com> <CAAFQd5AGm4U8hD4jHmw10S7MRS1-ZUSq7eGgoUifMMyfZgP2NA@mail.gmail.com>
 <7fe99ad2-79a7-9c8b-65ce-ce8353e9d9bf@gmail.com>
In-Reply-To: <7fe99ad2-79a7-9c8b-65ce-ce8353e9d9bf@gmail.com>
From:   Claire Chang <tientzu@chromium.org>
Date:   Tue, 9 Feb 2021 14:27:18 +0800
X-Gmail-Original-Message-ID: <CALiNf2_rRufFoxNN=i0_LkVvw31tXetKasm3SrzYy7O8o-sfgg@mail.gmail.com>
Message-ID: <CALiNf2_rRufFoxNN=i0_LkVvw31tXetKasm3SrzYy7O8o-sfgg@mail.gmail.com>
Subject: Re: [RFC PATCH v3 0/6] Restricted DMA
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Tomasz Figa <tfiga@chromium.org>, Rob Herring <robh+dt@kernel.org>,
        mpe@ellerman.id.au, benh@kernel.crashing.org, paulus@samba.org,
        "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        sstabellini@kernel.org, Christoph Hellwig <hch@lst.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Robin Murphy <robin.murphy@arm.com>, grant.likely@arm.com,
        xypron.glpk@gmx.de, Thierry Reding <treding@nvidia.com>,
        mingo@kernel.org, bauerman@linux.ibm.com, peterz@infradead.org,
        Greg KH <gregkh@linuxfoundation.org>,
        Saravana Kannan <saravanak@google.com>,
        "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
        heikki.krogerus@linux.intel.com,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Dan Williams <dan.j.williams@intel.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        linux-devicetree <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        linuxppc-dev@lists.ozlabs.org, xen-devel@lists.xenproject.org,
        Nicolas Boichat <drinkcat@chromium.org>,
        Jim Quinlan <james.quinlan@broadcom.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v4 here: https://lore.kernel.org/patchwork/cover/1378113/
