Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 11702958AE
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 09:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729194AbfHTHnF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 03:43:05 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:43871 "EHLO
        mail-qk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728414AbfHTHnF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 03:43:05 -0400
Received: by mail-qk1-f196.google.com with SMTP id m2so3728409qkd.10
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 00:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=S9BfCaCcjnrZTg8pwvBFIJa/79WcyMDlRnwOhM+do5w=;
        b=bx55f33SgGBAmLwuFK8/xzIDq47ECx9YckjIqY1DAkVBwvNu4bo2tA0VRL+XR9Hg2s
         XkFLTt0BbVXfpGyd/dJ6vSMlSD3ITzUQlni7OdwbFg6j/xaCHJzrIELtvzV84n4wXQe1
         si3UMNgrApcQgtMIyP02jwkEFbDxLTFzJ9csU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=S9BfCaCcjnrZTg8pwvBFIJa/79WcyMDlRnwOhM+do5w=;
        b=JYg5s+x16qZZymv6jVKuiiJpvBdmpZxt/RdhTMItqeKwSOAq07VcX5lsWdyeASkJJw
         QvZv8E9cBC0srd4tqF75gpPeWoihAimQbNYVIz0dMxzZt6rsVRmxXGJ/tFovgtsCZS9G
         hoTpUJtgIVyQUPjE+mQuCAgnGKO8jpsVTodzP2+SIMyRqMwMd1W4Cxo9n4u56YUlrfP/
         4rE5O6f/bnLbB6kcP4m3qZE5cj4MBaDfLL9bJjs67T1kSIOgxsVhrORCPq/BsN2SQyUC
         IHvUP7wUG9yeXbO43Rx6sQTt/LXkofAyTRqfm8krhYuDOnykVVaVbIR70CNDvTTpZs44
         AH2A==
X-Gm-Message-State: APjAAAUy1UdMQd3QaYMoB3r4wL4ut5ZfD8SabWKvDcfcB5BTVobCpJJO
        velrdKWSBFjEMvfzTF1XCGlaeDInEyLCnG3KXIljZw==
X-Google-Smtp-Source: APXvYqwA24yU/jmyxqzTB0F3DSWeTMOC1E3SNpe/Aj0iH0qAXzegQBrGnogbCNV8DHKmZc5s6stZEV41nc+8I6lPnvg=
X-Received: by 2002:a05:620a:16c3:: with SMTP id a3mr23640505qkn.315.1566286984047;
 Tue, 20 Aug 2019 00:43:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190819071602.139014-1-hsinyi@chromium.org> <20190819071602.139014-3-hsinyi@chromium.org>
 <20190819181349.GE10349@mit.edu>
In-Reply-To: <20190819181349.GE10349@mit.edu>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Tue, 20 Aug 2019 15:42:37 +0800
Message-ID: <CAJMQK-ghQ8weMerXW7t0DFZTAg_c5M80Yp5DTAtyY2LA7YpS1A@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] fdt: add support for rng-seed
To:     "Theodore Y. Ts'o" <tytso@mit.edu>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        lkml <linux-kernel@vger.kernel.org>,
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

Hi Ted,

Thanks for raising this question.

For UEFI based system, they have a config table that carries rng seed
and can be passed to device randomness. However, they also use
add_device_randomness (not sure if it's the same reason that they
can't guarantee _all_ bootloader can be trusted)
This patch is to let DT based system also have similar features, which
can make initial random number stronger. (We only care initial
situation here, since more entropy would be added to kernel as time
goes on )

Conservatively, we can use add_device_randomness() as well, which
would pass buffer to crng_slow_load() instead of crng_fast_load().
But I think we should trust bootloader here. Whoever wants to use this
feature should make sure their bootloader can pass valid (random
enough) seeds. If they are not sure, they can just don't add the
property to DT.
