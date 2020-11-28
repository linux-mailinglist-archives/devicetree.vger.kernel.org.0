Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FBE82C7061
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 19:18:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733004AbgK1Rzx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 12:55:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732260AbgK1ERu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 23:17:50 -0500
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58DE7C0613D1
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 19:53:25 -0800 (PST)
Received: by mail-qt1-x82d.google.com with SMTP id e60so4579609qtd.3
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 19:53:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Ewpz0g6dqBMQycl1pcLldGQ8J4wS9zhBfH5FnEv0pzI=;
        b=KBuJb1AU+99oZeB6gjhjsPLALvW14qra/yi+NTN3nh0BxVtfhmk2aeRLrbtI1oGI5N
         R07yu6PdflLp8MLuO2CiHWt3Tt9nf7Zc1K1LpuzmKly+J7zW/Zf48BcVDXcK3u6Zsw+3
         FjH8ZjG7q/dVNdPlTFTsLZVeXsUA2Sg78i/qI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Ewpz0g6dqBMQycl1pcLldGQ8J4wS9zhBfH5FnEv0pzI=;
        b=apMlbbEgRNMEkS1CPSxslxaqhmp1AQP/wKgjvdNkand285yA7Sdvil3uB50qbwCO4n
         keBDdbspe0iX/phjdIWF/w1wMmPF7c4Ze4grC8oijPAEhyi0mvcgo4hOgl0BeDPnDYCu
         edDCqSEMBpghJwNUsfbpIUo1zcucw/VeFQiuqQTfN4Js07SbmXk0rDijuBIfYeXEiTJP
         JhFODAz6oxlu3eZaVgxtYqu6gPOQxWHs7VV3PVhGbiqxQbLkOt0D43fjPJwXvuF+Suju
         EyDlqFgJNFVLV8ZoZ2LswhJNBSMCjna2mm//rNqL//IDl0/y7FgBj4w1QcOAyASG9bub
         nBQw==
X-Gm-Message-State: AOAM5303iOtq7dEuN86E4Dk7FnwuLwzWWW2P2njyQgnDYgyOuljXZUIY
        yzAGSXhGSmQpu2c6rBt0m/xmp2oKOjIgrZOz14CtLTLXW+ecWg==
X-Google-Smtp-Source: ABdhPJxHTkkfauspWL1B76Vqm0gXRZEshN9Gr6cJV9Uxoem0rL8VV9lmV33uSDcPAuW8rflT2tSQXYTHyRNWNS/Dr4E=
X-Received: by 2002:ac8:590f:: with SMTP id 15mr11646006qty.249.1606535603700;
 Fri, 27 Nov 2020 19:53:23 -0800 (PST)
MIME-Version: 1.0
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Sat, 28 Nov 2020 12:53:13 +0900
Message-ID: <CAFr9PXkX3UnLzGsPntXSum1978BkDJ1sn5XCp9Ze9KnHdmBDrw@mail.gmail.com>
Subject: How to describe a device that sits across two busses.
To:     DTML <devicetree@vger.kernel.org>
Cc:     Daniel Palmer <daniel@0x0f.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

I have a driver for a SPI flash controller that I want to mainline
soon and I'm cleaning up the device tree part for it at the moment.

This device has registers that are children in a "simple bus" and a
memory mapped area that is in the soc simple bus because it's not
connected via the same bus as the registers.

Right now I have the driver's node in the soc simple bus like this:

isp: isp@1f001000 {
  compatible = "mstar,msc313-isp";
  reg = <0x1f001000 0x400>,
           <0x1f002c00 0x200>,
           <0x1f002e00 0x200>,
           <0x14000000 0x1000000>;
};

Really the first 3 reg values belong to this simple bus:

riu: bus@1f000000 {
  compatible = "simple-bus";
  reg = <0x1f000000 0x00400000>;
};

Is there a good way to describe this? I think maybe the memory mapped
area should be another node (syscon?) and that should be referenced in
the driver node and the driver node itself nested in the riu simple
bus where the registers are.

Thanks,

Daniel
