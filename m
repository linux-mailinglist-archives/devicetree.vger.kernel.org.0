Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 52E11CE89C
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2019 18:06:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727791AbfJGQGb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 12:06:31 -0400
Received: from ns1.tgtizmir.com ([217.116.196.59]:38700 "EHLO ns1.tgtizmir.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727711AbfJGQGb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Oct 2019 12:06:31 -0400
Received: from 127.0.0.1 (localhost [127.0.0.1])
        by ns1.tgtizmir.com (Postfix) with SMTP id 113DE54CF94;
        Mon,  7 Oct 2019 04:30:30 +0300 (+03)
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received-SPF: pass (ns1.tgtizmir.com: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=dave@dbsoundfactory.com; helo=127.0.0.1;
Received: from [236.142.166.249] by 127.0.0.1 id 7IGHuySDC44d; Sun, 06 Oct 2019 22:29:36 -0300
Message-ID: <vn7-zw34729533m080fo4z119r-5i@q7clzwsb0s5>
From:   "Mr Barrister Hans Erich" <dave@dbsoundfactory.com>
Reply-To: "Mr Barrister Hans Erich" <dave@dbsoundfactory.com>
To:     derrickmarcum@freenet.de
Subject: RE:PERSONAL LETTER FROM MRS RASHIA AMIRA
Date:   Sun, 06 Oct 19 22:29:36 GMT
X-Mailer: Microsoft Outlook, Build 10.0.2616
MIME-Version: 1.0
Content-Type: multipart/alternative;
        boundary="BB118ED_BAB2D5FF1EA50F"
X-Priority: 3
X-MSMail-Priority: Normal
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--BB118ED_BAB2D5FF1EA50F
Content-Type: text/plain;
Content-Transfer-Encoding: quoted-printable

Greetings

My name is Barrister Hans Erich.

I have a client who is interested to invest in your country, she is a well=
 known politician in her country and deserve a lucrative investment partne=
rship with you outside her country without any delay   Please can you mana=
ge such investment please Kindly reply for further details.

Your full names --------


Your urgent response will be appreciated

Thank you and God bless you.

Barrister Hans Erich

Yours sincerely,
Barrister Hans Erich
CONTACT: hanserich9helmut@gmail.com

--BB118ED_BAB2D5FF1EA50F--

