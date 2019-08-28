Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 03D37A039B
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 15:46:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726663AbfH1Nqz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 09:46:55 -0400
Received: from outbound.smtp.vt.edu ([198.82.183.121]:37780 "EHLO
        omr2.cc.vt.edu" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726439AbfH1Nqy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Aug 2019 09:46:54 -0400
Received: from mr2.cc.vt.edu (smtp.ipv6.vt.edu [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
        by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x7SDkrkS016010
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2019 09:46:53 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
        by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x7SDkmj6022041
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2019 09:46:53 -0400
Received: by mail-qk1-f200.google.com with SMTP id c79so2539941qkg.13
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2019 06:46:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
         :mime-version:content-transfer-encoding:date:message-id;
        bh=6dlfkMiIJoG2i19B9uaZmEjU8eFDQ1sIWjxdg+T91HE=;
        b=R/LVoDKGbyHa7ZtdnYSbvTc1qaN6aKcgNH4JFCs41LNbWuwwbK0/n5bHSOIh09OmYV
         stUX2Plz9sdYsuCDIBBpvzaj62APPyRQAxPfZfKhuZhVbIPpKSg6OsVbb2FfuIXtMyK6
         kKwTlLC1gmYiPLHVjr5S9+4arYtcg4kuUZnKmqBHYal9EUqObyu58xII1nfb0jQDgQFH
         jJVQHiBIHtINFDcevbTs3pJkQ8R5sQ12K7NVE25AvH+BtxjWZfYnVpWV9zeao46qjj7m
         EgLN3xOVgR9qSJhTqAWXajB3UqyHIxMh+LnJserHOSwcscDXIlRSeTmfV3aDsmDbMexv
         sBJg==
X-Gm-Message-State: APjAAAW6eP1bMMGL6v3j6h/ImVgmtak/5vA2Qc7s6LaWt0NhXiRBb36N
        XiFBGnaxDlzIQaW4svhteKQeIzJGzyFosS0NhZYJANwhLU5NJVa7hy2zXDxuMedsOqtEUxAMuO+
        x/ky8X86U63/eWsqeyZEdYzVKZSHkYvQU
X-Received: by 2002:ac8:7543:: with SMTP id b3mr4241826qtr.13.1567000008084;
        Wed, 28 Aug 2019 06:46:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQaF6n9TNJ7UANQVE9yf8af37GlOyOcqa4tTFHjolQSwZt4CkCi4+VJt/bQM0T+/UKVBdLGA==
X-Received: by 2002:ac8:7543:: with SMTP id b3mr4241800qtr.13.1567000007811;
        Wed, 28 Aug 2019 06:46:47 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::359])
        by smtp.gmail.com with ESMTPSA id g24sm1327307qtc.38.2019.08.28.06.46.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 06:46:46 -0700 (PDT)
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
In-Reply-To: <46bcf493-9dd6-bf5b-089a-be158739a13f@kernel.org>
References: <20190826154252.22952-1-dinguyen@kernel.org> <30608.1566933924@turing-police>
 <46bcf493-9dd6-bf5b-089a-be158739a13f@kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="==_Exmh_1567000004_1612P";
         micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit
Date:   Wed, 28 Aug 2019 09:46:45 -0400
Message-ID: <292438.1567000005@turing-police>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--==_Exmh_1567000004_1612P
Content-Type: text/plain; charset=us-ascii

On Wed, 28 Aug 2019 08:34:20 -0500, Dinh Nguyen said:

> > Does this DTRT for both old and new U-Boots? My naive reading of
> > this patch
>
> What is a DTRT?

Do The Right Thing, sorry...

> > says on an old U-Boot, we end up attempting to bring it out of
> > reset even though they had already been brought out.
> >
>
> If the peripheral is already out of reset, de-asserting the reset has
> no affect.

OK, thanks.  There's been hardware where doing that sort of thing twice will
confuse the device and cause issues.

--==_Exmh_1567000004_1612P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXWaFxAdmEQWDXROgAQJZPhAAopKhP6wn5B9evWUpllhb6CIajYqxhob3
zLAF1vVdOpPXyTT3PaFMjwrqKiPt9QnMLHW5odZ5UswcH4dBRByhwb8Hr8a/Ibo9
Nb6BdK1KuilWx3bCvw63nNH9aB+tPvcaOUtux73gD+HaPa/XCvzZvObCnFCXa4oa
9gQJl8GG8pRLfH03QPSYGKAzyJ35qt2RBarVa0Z19NZPB5LDDePLKwxblatRFICW
mhdH1t6uC7CuxMqfHKbG5MyhdmgmmOyHg16tHxZ85B8f0CoCFAHx9sNzvS3dmXZd
bP2+r7cQ4kNkIWI/PNPzh+s8D9ZlWYdGn1p2VQU/4FKMh2d7IDS5MvLgA5rf0DiE
bOPBbqzfZ/DsfyW96M9e4/53OYYK5gqC+ZaePJKY4BkAHLNtKewczCw6E+kck7OW
4ya+eOEFQzl9wC5XNMrYkdV8DLhftU4qEzAHuNH2vHIK7BK+3ARGB4tSQyTMNi/x
yOPY69cLv4llawfjD/y0PSqmvKN1MlIjmxeAD9kh6AoTUNNNRgj0F+T/Ma91uBeV
50x+YgZZ104bD6d3s5U0kIgykQJARE0JivC9fkFuKZXE6vtIAssE3FFLw2NKncXw
Sq+YA6DuuSvCdhAWEmYJpbpwREHEGAjLsN+JBxPhV7vbbGhVV1UuYXPDVfp18Moy
fW9l0ZeoE+c=
=tC0P
-----END PGP SIGNATURE-----

--==_Exmh_1567000004_1612P--
