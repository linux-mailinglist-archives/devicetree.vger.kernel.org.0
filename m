Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 54BEC3C7B3
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2019 11:54:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404991AbfFKJyI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 05:54:08 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:44541 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404425AbfFKJyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 05:54:08 -0400
Received: by mail-qt1-f193.google.com with SMTP id x47so13702387qtk.11
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 02:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+38Lbr9rNUhSKar2BeR7VlIqBZLydDsxiHIDtpA/c3A=;
        b=Z4JEhv0f3lRlQOqp16GGJPy7vo+ohK7tFrcMiCjMmz3xt4glhA5S+gKoiZ10q4U7Gq
         kUj80uBjld/wT8KgyE/nkAdzUVxWtd1fMxSeJF/zhLirggcLf1bzM0qSEv4PyfNfF4WQ
         yjnvzv8OZ2q6+VPAPB99Q+99/573fTz64YGzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+38Lbr9rNUhSKar2BeR7VlIqBZLydDsxiHIDtpA/c3A=;
        b=BB4aLlP2wOU1BxS67l3ecNk2KPU3uoLAygXiMDP0DtCYc5m9h7lyMUSIlZIsZi6Elo
         qUZgkBo6W9svdAKqNShMQ7apOlkdDYriKI4oqURoPRP9rcVg+p8eMHyWoMlOLPLIh3hy
         yqkQgAteGbVw/E5Tc1PRswaPTuep4bmTO2dJ9nEkh+c6yiBoqfAsYiCr5NCpCnGUUgqH
         JIcGp3ZNs3LfuvrInmh0OECpZEhPDlImsyD3gt9G5tgzvuHFpAFsVfAmDglx8N+2ipWI
         NdTUkeXEkJ35aq73H/H/WI8iSlthEEGXqDGmDiCULCTXDr80DnqbOpdbQaAFNd+/fkpG
         ubnA==
X-Gm-Message-State: APjAAAWq44GmF9RFmlbq2400T0VzcMWcXFY91ONacgx8bCknqR0A4T1m
        ZM+eiBNBqejPSoT+t61B444uPYjuKKE=
X-Google-Smtp-Source: APXvYqwPb/h3yaEbJlw03cR2s1nsALwMGvsuSXQhacWUWrcdYvSskYWqbY+HMR9d1fC23Ga27LIEOw==
X-Received: by 2002:ac8:f13:: with SMTP id e19mr62643838qtk.11.1560246846773;
        Tue, 11 Jun 2019 02:54:06 -0700 (PDT)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com. [209.85.160.177])
        by smtp.gmail.com with ESMTPSA id q29sm6588291qkq.77.2019.06.11.02.54.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Jun 2019 02:54:05 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id m29so13754316qtu.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 02:54:05 -0700 (PDT)
X-Received: by 2002:ac8:28e2:: with SMTP id j31mr23670135qtj.274.1560246845373;
 Tue, 11 Jun 2019 02:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190527083150.220194-1-tientzu@chromium.org> <20190527083150.220194-2-tientzu@chromium.org>
In-Reply-To: <20190527083150.220194-2-tientzu@chromium.org>
From:   Claire Chang <tientzu@chromium.org>
Date:   Tue, 11 Jun 2019 17:53:54 +0800
X-Gmail-Original-Message-ID: <CALiNf2_Kuu9agO31Wg2X4uUa0EHWYL=qG5RLQ=catn8M9XDKGQ@mail.gmail.com>
Message-ID: <CALiNf2_Kuu9agO31Wg2X4uUa0EHWYL=qG5RLQ=catn8M9XDKGQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: serial: add documentation for Rx
 in-band wakeup support
To:     gregkh@linuxfoundation.org
Cc:     changqi.hu@mediatek.com, linux-serial@vger.kernel.org,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

(cc-ed device tree maintainers and mailing list)

The second patch in this series[1] is already in tty-next[2].

Sorry for not cc-ing device tree maintainers/mailing list at the beginning.
I can resend this patch if needed.

Thanks.

[1] https://patchwork.kernel.org/patch/10962299/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git/log/?h=tty-testing
