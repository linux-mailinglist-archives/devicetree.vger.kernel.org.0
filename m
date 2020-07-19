Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 083AD22518D
	for <lists+devicetree@lfdr.de>; Sun, 19 Jul 2020 13:12:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725988AbgGSLMH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jul 2020 07:12:07 -0400
Received: from sonic313-56.consmr.mail.ne1.yahoo.com ([66.163.185.31]:34433
        "EHLO sonic313-56.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725836AbgGSLMG (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 19 Jul 2020 07:12:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1595157126; bh=qXBWf2EoWT9gmJgm/3NiogFnv3V/rxlq5ApKE+Dow4k=; h=Date:From:Reply-To:Subject:References:From:Subject; b=PJYanfWUWrefFdBQ6QrMqKo55LhWKTm/qmHNX7pmQeGBYFw/8NgGdx4ZzvQVEaaST40qCf/xQQaMFJILHyRhXwpwvf/Dahun50IcSs2mVKJWELtn/yXuhmYspZPnoALgkXedGLbl7n96XslyGv0jQlJH8ySL0QqEn4gI17IyD8y9Ame7n3ub0KgIwZ8g5QCAYjycSxzbVRwJ2zfVVr+Q14OlItmzdSkm/I7Z+YtUgIxjiB+r4bB2w8cBzjZ2r1J38J8CKo8qCyqVPB1WrKo1j/7RbqVT3FVLM6OakkfoLN5Gg5KNt9sqhi7FaRJ22BywGJt/G2wUfVk9qqyP1Dxuew==
X-YMail-OSG: jn2oagwVM1m7YpVyjNupcO4wNFMld2qwLzewOUDYzSDBa8cWE10A0WbaZX6PT_h
 tx47NEYKrQOrAXFWeVgOdfh_JVH3PQbKSP2_mHLQgoSOgqe1shCUSGOIXoj8R5Hlb8GmJhIl_9d3
 gKUf86yN0yXCumRxR3IVQVjqAw_GsYs9DMaldmLGlKVjxThl0AMVq.1HYJIf4XFWy5zwTNOtLwW8
 GLv6T9EJVtroY8ev81b7VdxA49JvpyrdrRoLEhBj0pPhfgAUYBIJFmbPIokBiltWl0x9AuVoDraY
 SbXEytjo9KEBGWLGFy9Aw1Aneia2qY0MIlv57HDMiIelUAp8iXz7GasGsLqWFI19cJnstMKJYNC6
 J8QrIjTGHBgvhzSuJzsJUebb.dEQBTT5i_KIz3ug3QNTsGBGIeT7RpgxLQXInv24i4CYOHXKgSOi
 gbHYDtXPvImgMeK7QBUkz5RnNVerSDFXyx_Fs2UysrPCuj0nXsce6_RSrFLwTiUsY_QFX._mMY_n
 VWNs4gIVI2tt8wzjW7x2JG.VWSSP2QC1Iyo1a0bnx2d7GsKVI6LokdjRBoe__A3YfRN_ng4SEBX_
 FnST1lp3GvbtFXNvQeUkE7XR9PCARBMyaT2BluQ3kmSuKssICcRQTPkV2IAMw7RbiVVR0XQ28leU
 3yY_xVuVkh9LsR89aqROZi0H8K9Y.MxlMvDJ.k3STvOroHaRy5oK7ppzN6giqS5sNDkHIMHxuiIk
 c6d7nnnBxa6ZJPd3zGH.UxOxLqbzbl9.5XdaVkzWCnu.1ySkN75AOE3NF3u2_8U_yDT0dBOAUCWd
 r9afysiu8grj4qzZjelkkYV8d0OcdfiFHOazT.IHHUamevK430aocoSk70cBoSx1_U7TdGMyioOM
 lD3MH6pp8IiiACkC6dr4._vIzMhWd9zGgc6KOU21_iav4wZE1p9zxc0imtoS0SQ6ZePyEWp5GGkU
 RaT_hd.gQJwtywj6XwfFQ0T7yYLeZGERDlBNo7Vrt4LMr..c84PNGIiYxgi5yzPuIbj7JTZCRv6n
 MjAw_xoB7RGcD1TwRx7yJVc2WC_n_QML2flKndwDDC32CI1P4S4gJWog5XvRS13bNnbRQkyFwMes
 IMIHDgZDUgR_9Em_FWW5Ev9o45KL0LMlh.bWpy9AXF77Xt0nGQg.fOaPaq1jVznm_Y6YUa8k1V9n
 JA2pjae_RfFCCDnsWiXlgQLZD7ZlGFhxEw8Wq.KnUpQ5Yy_HDSEdDagrll.XHTCVhMq4IvoOCXHm
 SWdBQXLf.2E_.ReiYFMn9OP476TsUY3XquXrTihnB.a3074UbbHaycfUCMrfJIRhULH4xRNlqxxO
 98KU-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.ne1.yahoo.com with HTTP; Sun, 19 Jul 2020 11:12:06 +0000
Date:   Sun, 19 Jul 2020 11:12:04 +0000 (UTC)
From:   Monica Render <prender1226@gmx.com>
Reply-To: mrender377@gmail.com
Message-ID: <907194498.3841327.1595157124735@mail.yahoo.com>
Subject: Nice to meet you!
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <907194498.3841327.1595157124735.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16271 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Please do you speak english?
