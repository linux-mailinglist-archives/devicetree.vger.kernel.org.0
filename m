Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CD6B1E9AB6
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2020 00:38:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728255AbgEaWiy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 May 2020 18:38:54 -0400
Received: from sonic301-32.consmr.mail.ne1.yahoo.com ([66.163.184.201]:33189
        "EHLO sonic301-32.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726081AbgEaWiy (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 31 May 2020 18:38:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1590964733; bh=rrZhNPUEtLToZv3r9Shsqy2lS5fH+Hj0K/ydiNWFtag=; h=Date:From:Reply-To:Subject:References:From:Subject; b=aZ5LeIlFAmajbBHvwv0qbWsQT4nSpDuYdFLqYk6MuO8hwKIVbPgOK3plVVaPkXa/ky8Bg8+jJwz51zs8ViMzIZM4tNpl4Au50qoEd1f8JK9l3zAWQ1uTvq1IqlwTgndC74PWLc88drRPHrggkzTu3ui8LjbbZvPQTDSyIoOeypuLzWbsIV9TQfxJ5rWWAUq3i2nau0PaoNlGVd8qYt7/ciHMdD+GkKzHSJeP9h5gPWaTIgCbWFPDXPH307EIMpvPHPDyg33xzi3HbHlTk07L0ncoP7cnheRISjfDFSdGcFofzskQxV1q6qnQ1ixHnn3ajpWU03TBJng8Y8uxyFYssg==
X-YMail-OSG: 4uCKIU0VM1lli4rjIJL7hvG2YTEmmNI_KhDagoS09Wf_BeM4.DyGxySTjFwG6DH
 oz5sUcs0TMUus7HgY2Q1O.fkVMOwTizYUYoMpgPT0PlLpAh40zw71Canq6guWEyaEx83R.p8W0wx
 gNCQUwAoG8ef1ABJ_GIByUNFI4.5r7_zN58_0VOPyL4b2g9_tw9rXO314obInyybVSMP7YwdKvKy
 Idooy9vIgZl7m6p._juXh7EiON3.I5m1_1Zo3Rj1L2LZ.T2mX73oucXPf6dmoRqP9w3m_6vVhHq9
 LEKsjcwlQezxTK3mqf0P81d9Tuot0MYHOc4bS7749JEIriyfhidM83svVGb_a9ySkg_gLdQWVrXv
 C1ML0.g3fQG6LWUDB3Uh1sor4yrqVv7OMWuXz5ph.7gGkq6xA5hR4KfhygBm4cWlM_hgDY5lpcRB
 leec4FwNAnA8OdXHKi2WSdTEjJ4SYtg5tt6f7KHiuWqlOJNFqIeO99kXNPYghJJ6MBo1kfU8CXxi
 n5oOCpaO6HCntiYs5mJ19.TCpR8qjfU8LzfP1MUbX_yaVTNHJnPxylNl.k24VjV25eF93IZhskTO
 CEXIfvm52H4RbBVJ_5uHirezQOvhg3L_Ffho9JOtZBSlQaM0sXb57crxaVGrmBbDmtwunrVwAwF0
 izsjEH56VeX5VSdOyKLFVJyNA5.BAMo7J5dOU9Kr1SFD1LbrL8RLVca7j8rw7wcUQClHGIyZxkUR
 PV9GfIxQymGqnOlTjnjaIBvOm9GQQJcZtwUwPavg23U9rNtz1oS8x3qevfINWTjKJPYbxVbDi1BY
 liN0AFcDIUVkoxTb52OQo4TUjaeuRestAGg2pYMVmQCDu653QvesUgHtCxIUeu7K3ihRdnu6cWBU
 9ni9vPmtu9tf8cHvpCzUthyADDj5v9kxgEjaTyxqNq35bSlKHliCOe1uD9EK93s8rHNZ3rN7WA3e
 t9l44367NQkigmWn5OO_FJ_6ehIB7boao9Gyo76uuxcIHv6CrTfMw3CMXcoczLz8ZvcHqy6QgCi5
 0wVGKg5CNofF8W65gm5jtG7UaVXsMWR6XxiPwoWbVtP.JG4lyIJ1dUiOeAwjBlguLw5Wwt.jsS0I
 MicOftJzBYbgm7W.ZHhMTJRZfH1.KLjIk2R4Hr1Ht9Y5NWqPCtOFgdFpyzfOkq98I9Bq5OFUcTEq
 rcL.zu5Gp60zDuVcv9fX.Rvsh76Ua4QpcgCgMRr8jGZk1okgygfjRM1HlkXUwyJESfn7OQf2tjzj
 wgKB6pgpa2LOolOyG9uH4axRSi2zyHnxXWhbT9Y1muSraJE_pvMop0sq7.ewoKbFk8Bhdca_zLmI
 Zsp93xJCGHAk4UuQfLu3ujTislwK5fac-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.ne1.yahoo.com with HTTP; Sun, 31 May 2020 22:38:53 +0000
Date:   Sun, 31 May 2020 22:38:52 +0000 (UTC)
From:   Ibrahim Tasha <ibrahimtasha08@gmail.com>
Reply-To: IbrahimTasha12@gmail.com
Message-ID: <1648887787.572041.1590964732805@mail.yahoo.com>
Subject: Hello
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <1648887787.572041.1590964732805.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16037 YMailNodin Mozilla/5.0 (Windows NT 6.1; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Hello
I'm "Mrs Tasha Ibrahim" married to Mr. Ibrahim( an

International
Contractor and Oil Merchant/ jointly in Exposition of

Agro Equipment
) who died in Burkina Faso attack, i am 64 years old

and diagnosed
of cancer for about 2 years ago and my husband informed

me that he
deposited the sum of (6.3Million USD Only) with a

Finance house) in
UAGADOUGOU BURKINA FASO.

I want you to help me to use this money for a charity

project before
I die, for the Poor, Less-privileged and ORPHANAGES in
your country. Please kindly respond

quickly for further details. contact my email [

ibrahimtasha12@gmail.com ]

Yours fairly friend,
Mrs Tasha Ibrahim
