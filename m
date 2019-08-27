Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC5CF9F345
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 21:25:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730486AbfH0TZf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 15:25:35 -0400
Received: from outbound.smtp.vt.edu ([198.82.183.121]:42644 "EHLO
        omr1.cc.vt.edu" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1728834AbfH0TZe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 15:25:34 -0400
Received: from mr6.cc.vt.edu (mr6.cc.vt.edu [IPv6:2607:b400:92:8500:0:af:2d00:4488])
        by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x7RJPWRe010325
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 15:25:33 -0400
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
        by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x7RJPRkC023446
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 15:25:32 -0400
Received: by mail-qk1-f199.google.com with SMTP id x1so106244qkn.6
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 12:25:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
         :mime-version:content-transfer-encoding:date:message-id;
        bh=/VrYLSYfcVcWU8zr6i2AquUrruupT+f/dYq6MTZWV9A=;
        b=LFDrWSkTdFvCkz8nlvAHyFWeDy405XhbokUCvud8uuun2hYqCcZEO0aXccg6DeW7OB
         2GLws8DDD57ROnlgws+j7rykN2NDvq8HVjK97+t4YmeL7Fj0X3l4Y34ihrzp4KsVFnG6
         AMJgzLloC0lRtyguDmPnYxhDQIGgGK2mc9AdURPzEwLcJVSmH+vt/vbmVV4t8zw/HPje
         dU6MUMKaIuPIEGacTeeDJlPbvzjOqErY2OYTto6W/tQ+5cfJJjFmAAGxmLo7be5rfKJO
         GEah0HIIoRHh1LpJxq+xvXQ2ZAuxOHVFGU0Li/g5EHM2MWk57OjM5VRWH0SPQhiTikaT
         4REA==
X-Gm-Message-State: APjAAAWgHfGdu9F1dUTaDShqkHznz/xIfIqtnSKIzeVL3lDUyqBGtBFC
        iB38ojeB6xPVcFvxM+YQKHTSmcYIAXFmiGXQxBObqnPcgxyd6SnFUM+sc69C/8EbAkbHwsVsBvj
        dYJ19MGdbetxRNdpX0/+/80nApCSafDWR
X-Received: by 2002:ad4:4301:: with SMTP id c1mr135702qvs.138.1566933927556;
        Tue, 27 Aug 2019 12:25:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw0pbhFIG53y1qAT0fpDgiysZVyE9tsfzlFkV4m2v3eE8h31MrmRk0phL4zAQ9B/pjlGvPJjg==
X-Received: by 2002:ad4:4301:: with SMTP id c1mr135669qvs.138.1566933927147;
        Tue, 27 Aug 2019 12:25:27 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::359])
        by smtp.gmail.com with ESMTPSA id m10sm154810qka.43.2019.08.27.12.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2019 12:25:25 -0700 (PDT)
From:   "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh@kernel.org, linux@armlinux.org.uk, frowand.list@gmail.com,
        keescook@chromium.org, anton@enomsg.org, ccross@android.com,
        tony.luck@intel.com, daniel.thompson@linaro.org,
        linus.walleij@linaro.org, manivannan.sadhasivam@linaro.org,
        linux-arm-kernel@lists.infradead.org, p.zabel@pengutronix.de
Subject: Re: [PATCHv5] drivers/amba: add reset control to amba bus probe
In-Reply-To: <20190826154252.22952-1-dinguyen@kernel.org>
References: <20190826154252.22952-1-dinguyen@kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="==_Exmh_1566933924_1612P";
         micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit
Date:   Tue, 27 Aug 2019 15:25:24 -0400
Message-ID: <30608.1566933924@turing-police>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--==_Exmh_1566933924_1612P
Content-Type: text/plain; charset=us-ascii

On Mon, 26 Aug 2019 10:42:52 -0500, Dinh Nguyen said:
> The primecell controller on some SoCs, i.e. SoCFPGA, is held in reset by
> default. Until recently, the DMA controller was brought out of reset by the
> bootloader(i.e. U-Boot). But a recent change in U-Boot, the peripherals
> that are not used are held in reset and are left to Linux to bring them
> out of reset.
>
> Add a mechanism for getting the reset property and de-assert the primecell
> module from reset if found. This is a not a hard fail if the reset properti
> is not present in the device tree node, so the driver will continue to
> probe.

Does this DTRT for both old and new U-Boots? My naive reading of this patch
says on an old U-Boot, we end up attempting to bring it out of reset even though
they had already been brought out.

--==_Exmh_1566933924_1612P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXWWDpAdmEQWDXROgAQIdrxAAon/T5pCtAGieFVjdAdhJjdPwqAhckoGF
6pdEvZoDtGgXHLPcNmX5YO0BXVRyCmQg8x57sEFISk2PrmS2Ax+UCVUpEaLQMjbD
Dd0vJxZKe9Sz95p4ELvhEVvXPVq9+rkIEmWsVUVNGWN4sbpQc7vs2+JtHwFlx+2n
m/taFbOH5qIRVYJQalBesf8WUcltYiA9ox4tKNYDSyKMqWVrGgvkxjO81appgJAZ
78x3eX94SyB2l7pJHNmRYdvr69kdFFzQDSbm1Y8rQnzar03fKUtpRmn1yXGc87wc
SG08stZRhvr+H98MHe4LjkjYNxNO+k6R0q+jmdjMwD+NaDveKt43ydl+xF4kbYbl
GzX+t51GUeU1PWnuHj+frYnUc0hv4N0xwC5SSWQ8vh0+0xQZsxYRluHLSEAw/VRp
Qh8+wBX3rZ8Q8dQfoXPfj9z4DdWgXAlDoB1yAJDtdRG8sdcKfGL71bZjv7hB0Z6I
XWnRsfqNevx/9Ev6shSve1jSHqGuuVb0ggOQVIcR9qaEeXI9UiRHOgK4qahEA6rI
Im7p+uPlHE4agtwgvXy4QTXksuKqFj8xouyI9QQc5PtI60bT83/PXQzS7ywotkZh
mFrpIGzD7D4xB4dQY4MB4jrGlPIArWfIKkqQ9jnTgD5dugR1CfejVwe7im0Lotyt
0bip0m4JQ/U=
=XqAz
-----END PGP SIGNATURE-----

--==_Exmh_1566933924_1612P--
