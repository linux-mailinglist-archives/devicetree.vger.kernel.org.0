Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF7FC791C35
	for <lists+devicetree@lfdr.de>; Mon,  4 Sep 2023 19:52:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347257AbjIDRwr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Sep 2023 13:52:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235177AbjIDRwr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Sep 2023 13:52:47 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47A65C4
        for <devicetree@vger.kernel.org>; Mon,  4 Sep 2023 10:52:43 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6bdc27e00a1so1381712a34.3
        for <devicetree@vger.kernel.org>; Mon, 04 Sep 2023 10:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1693849962; x=1694454762; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/0NSux7WIhOlWENj4GY5q7z9ZP0dXuhkn2qOr3fP13A=;
        b=QaIBP9znXM3TctyOj8kvBWy+rIDx0BfOo5UnEfgmsAk4d2nj2SI1rtVq58h2jxDNKf
         h4Z+KPFfBi/ZA5zJD9wdY9vTS3rA2A+h4EQI4BcWKeoMkLxHnhSsIP5lAjv3/ykYUd89
         6OATojQYY1ucWkNay56QxuAt/R+h8r7zSNpWx4nGdrWoB14Pq3rmICv/KB+C+bNUMgss
         x+KvMl5ijq0f6Mursb3306kmnVaUJzztfZKcLkhA/ZPmg9KJrFrnHQraMxs3+qXsZdvh
         iG7N0EN3wxuVM99hwddpuQnDmioPAvQE3yLh02m2qTzwRiZ7EADlRjtpYAwy0iYd72yb
         Pasw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693849962; x=1694454762;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/0NSux7WIhOlWENj4GY5q7z9ZP0dXuhkn2qOr3fP13A=;
        b=OohNo+gkWMwKaPKJbZeZAKPNQCB1TUTyPpuC008F+hdznHEq95f/jMnF/Mmx2u4QHN
         I7FdCTu1YXNG+XD3RugFeFf98I2yvKytPSA1Hv0KPBxV9LeDUIdrYzMNvjkHv+JYcwSD
         y4teGL/lci1m8lT6M6ySxu5wqBDLyr27W0zm5bTt0t1G4OX09HCvRzNRcyjm3MWJxFcQ
         eBZ8iD45FisPKH+FPtwzfmxWJmcfLunUC0R8ARNEtd0xOxTH1+qZa0NLpLQhrOoib2yL
         XHINBUMF1W/PrYw49bXlQK+e5YmkbwU/QhkBYJ+1pi3OWoVVnbhN1KI/kPCJ7aeuuIZH
         Qwfg==
X-Gm-Message-State: AOJu0YwLTK36+xzjSkLC0dviijLyHUQE6hNJ2yC41k13ap35IauaM5ee
        7dULALEvn1MzhY3prxt5TPHsgQ==
X-Google-Smtp-Source: AGHT+IE02hbyxClU0q+VLjVe/UVes00MtfmE3gI74NFN0LhTxB9sOC/Rue1sXT08bzG3eYxwjuSR8w==
X-Received: by 2002:a9d:4818:0:b0:6bf:3f4:3edc with SMTP id c24-20020a9d4818000000b006bf03f43edcmr11297444otf.22.1693849962579;
        Mon, 04 Sep 2023 10:52:42 -0700 (PDT)
Received: from x1 ([2601:1c2:1800:f680:e0eb:2a3d:8122:b588])
        by smtp.gmail.com with ESMTPSA id gw8-20020a17090b0a4800b0025645ce761dsm9361371pjb.35.2023.09.04.10.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Sep 2023 10:52:41 -0700 (PDT)
Date:   Mon, 4 Sep 2023 10:52:39 -0700
From:   Drew Fustini <dfustini@baylibre.com>
To:     Xi Ruoyao <xry111@xry111.site>
Cc:     Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: thead: set dma-noncoherent to soc bus
Message-ID: <ZPYZZ4blDwaM8/ru@x1>
References: <20230820115353.1962-1-jszhang@kernel.org>
 <ZPUXhe7ogxvaB6Eg@x1>
 <ZPXtl1iWlsYwmixc@xhacker>
 <292198d3915bafbe1c82372da2f2755a1842512f.camel@xry111.site>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <292198d3915bafbe1c82372da2f2755a1842512f.camel@xry111.site>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 05, 2023 at 12:28:41AM +0800, Xi Ruoyao wrote:
> On Mon, 2023-09-04 at 22:45 +0800, Jisheng Zhang wrote:
> > On Sun, Sep 03, 2023 at 04:32:21PM -0700, Drew Fustini wrote:
> > > On Sun, Aug 20, 2023 at 07:53:53PM +0800, Jisheng Zhang wrote:
> > > > riscv select ARCH_DMA_DEFAULT_COHERENT by default, and th1520 isn't
> > > > dma coherent, so set dma-noncoherent to reflect this fact.
> > > > 
> > > > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > > > ---
> > > >  arch/riscv/boot/dts/thead/th1520.dtsi | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > > 
> > > > diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> > > > index 56a73134b49e..58108f0eb3fd 100644
> > > > --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> > > > +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> > > > @@ -139,6 +139,7 @@ soc {
> > > >                 interrupt-parent = <&plic>;
> > > >                 #address-cells = <2>;
> > > >                 #size-cells = <2>;
> > > > +               dma-noncoherent;
> > > >                 ranges;
> > > >  
> > > >                 plic: interrupt-controller@ffd8000000 {
> > > > -- 
> > > > 2.40.1
> > > > 
> > > 
> > > Tested-by: Drew Fustini <dfustini@baylibre.com>
> > > 
> > > I tried this on the BeagleV Ahead. They system booted as expected and I
> > > did not notice any problems in the boot log.
> > > 
> > > Are there other patches such as the dwmac series that I should test this
> > > with?
> > 
> > Hmm, this patch is necessary to test dwmac, emmc ;)
> 
> Drew: does this fix the "broken DMA" issue you've mentioned in the EMMC
> support patch?

After I sent my reply yesterday, I then tried applying this patch on top
of my eMMC series. I removed SDHCI_QUIRK_BROKEN_DMA and I discovered
that SDMA did not immediately break and the mmcblk0 partitions appeared
in /dev [1]. Note - I am using CONFIG_INITRAMFS_SOURCE set to my
buidlroot rootfs.cpio so that the system will boot okay regardless of
the emmc.

I was able to mount the emmc boot partition /dev/mmcblk0p2. However,
after unmounting it, I noticed that I could not mount it again:

  # mount /dev/mmcblk0p2 /mnt/p2 
  [   41.684899] EXT4-fs (mmcblk0p2): mounted filesystem 6ea98ccf-2178-48a9-a1ad-0eb454f57268 r/w with ordered data mode
  # ls -la /mnt/p2
  total 22696
  drwxr-xr-x    5 root     root          4096 Sep  4  2023 .
  drwxr-xr-x    4 root     root             0 Jan  1 00:00 ..
  -rw-rw-r--    1 1000     1000      26455552 Sep  4  2023 Image
  drwxr-xr-x    2 root     root          4096 Jul 29  2023 extlinux
  <snip>
  # umount /mnt/p2
  [   52.101003] EXT4-fs (mmcblk0p2): unmounting filesystem 6ea98ccf-2178-48a9-a1ad-0eb454f57268.
  # mount /dev/mmcblk0p2 /mnt/p2
  [   58.826078] JBD2: no valid journal superblock found
  [   58.831041] EXT4-fs (mmcblk0p2): Could not load journal inode
  mount: mounting /dev/mmcblk0p2 on /mnt/p2 failed: Invalid argument

I was completely unable to mount the root fs partition /dev/mmcblk0p3:

  # mount /dev/mmcblk0p2 /mnt/p2
  [   58.826078] JBD2: no valid journal superblock found
  [   58.831041] EXT4-fs (mmcblk0p2): Could not load journal inode
  mount: mounting /dev/mmcblk0p2 on /mnt/p2 failed: Invalid argument
  # umount /mnt/p2
  umount: can't unmount /mnt/p2: Invalid argument

I suspect there is some corruption of the buffers happening. I see there
are also these patch series from Jisheng so I will try applying them and
see if there is any difference:

  [PATCH v2 0/2] riscv: errata: improve T-Head CMO
  [PATCH] riscv: mm: update T-Head memory type definitions

As for ADMA, when I removed SDHCI_QUIRK_BROKEN_ADMA, something fails
silently [2] during boot and the mmcblk0 partitions do not appear under
/dev. 

-Drew

[1] https://gist.github.com/pdp7/6d27c57f8280fe1ae35e585d66e73f61
[2] https://gist.github.com/pdp7/23e2bcc2aba09b5c88eb579b61ea45ce
