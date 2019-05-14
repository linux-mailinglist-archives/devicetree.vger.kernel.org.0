Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 739751C408
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 09:40:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726190AbfENHkk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 03:40:40 -0400
Received: from mail.lunchkarty.eu ([80.211.141.150]:60075 "EHLO lunchkarty.eu"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725946AbfENHkk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 May 2019 03:40:40 -0400
X-Greylist: delayed 482 seconds by postgrey-1.27 at vger.kernel.org; Tue, 14 May 2019 03:40:40 EDT
Received: by lunchkarty.eu (Postfix, from userid 1001)
        id CFF7287B04; Tue, 14 May 2019 09:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lunchkarty.eu;
        s=mail; t=1557819140;
        bh=f1u+pYecLd6mNHFMnFsURDhrfpdsTKf+mhRhbjjUnrg=;
        h=Date:From:To:Subject:From;
        b=l9KJ5f+ChmtL1RahMJWza/wRj3TBkbbrE60DsSQoJgoq7BQG5AIadETBmy3xVLW5d
         nM1CPzB5GD9ceu2RRIZM9QbU4BRpmA1DEouuE6tonxPSuqN9t7wbQgRC5vRKqzj0QR
         ieF8TYStt3YNFjevwhzarcQOc8QQWtBlv1BddAdo=
Received: by mail.lunchkarty.eu for <devicetree@vger.kernel.org>; Tue, 14 May 2019 07:30:47 GMT
Message-ID: <20190514084500-0.1.r.2h2l.0.aqpa6zer1w@lunchkarty.eu>
Date:   Tue, 14 May 2019 07:30:47 GMT
From:   "Radoslav Dobrev" <radoslav.dobrev@lunchkarty.eu>
To:     <devicetree@vger.kernel.org>
Subject: =?UTF-8?Q?=D0=92=D0=B5=D0=BB=D0=B8=D0=BA=D0=B4=D0=B5=D0=BD=D1=81=D0=BA=D0=B8_=D0=B1=D0=BE=D0=BD=D1=83=D1=81=D0=B8?=
X-Mailer: mail.lunchkarty.eu
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

=D0=97=D0=B4=D1=80=D0=B0=D0=B2=D0=B5=D0=B9=D1=82=D0=B5!

=D0=9D=D1=83=D0=B6=D0=B4=D0=B0=D0=B5=D1=82=D0=B5 =D0=BB=D0=B8 =D1=81=D0=B5=
 =D0=BE=D1=82 =D0=BC=D0=BE=D1=82=D0=B8=D0=B2=D0=B0=D1=86=D0=B8=D0=BE=D0=BD=
=D0=B5=D0=BD =D0=BF=D0=B0=D0=BA=D0=B5=D1=82 =D0=B7=D0=B0 =D0=BF=D0=B5=D1=80=
=D1=81=D0=BE=D0=BD=D0=B0=D0=BB=D0=B0, =D0=BA=D0=BE=D0=B9=D1=82=D0=BE =D0=B5=
 =D1=83=D0=B4=D0=BE=D0=B1=D0=B5=D0=BD =D0=B8 =D0=BF=D1=80=D0=B8=D0=B2=D0=BB=
=D0=B5=D0=BA=D0=B0=D1=82=D0=B5=D0=BB=D0=B5=D0=BD, =D0=BA=D0=B0=D0=BA=D1=82=
=D0=BE =D0=B7=D0=B0 =D1=80=D0=B0=D0=B1=D0=BE=D1=82=D0=BE=D0=B4=D0=B0=D1=82=
=D0=B5=D0=BB=D1=8F, =D1=82=D0=B0=D0=BA=D0=B0 =D0=B8 =D0=B7=D0=B0 =D1=81=D0=
=BB=D1=83=D0=B6=D0=B8=D1=82=D0=B5=D0=BB=D0=B8=D1=82=D0=B5?

=D0=92 =D1=82=D0=B0=D0=BA=D1=8A=D0=B2 =D1=81=D0=BB=D1=83=D1=87=D0=B0=D0=B9=
 =D0=92=D0=B8 =D0=BF=D1=80=D0=B5=D0=BF=D0=BE=D1=80=D1=8A=D1=87=D0=B2=D0=B0=
=D0=BC=D0=B5 =D0=B4=D0=B0 =D0=BE=D0=B1=D0=BC=D0=B8=D1=81=D0=BB=D0=B8=D1=82=
=D0=B5 =D0=B8=D0=B7=D0=BF=D0=BE=D0=BB=D0=B7=D0=B2=D0=B0=D0=BD=D0=B5=D1=82=
=D0=BE =D0=BD=D0=B0 =D0=B2=D1=81=D0=B5 =D0=BF=D0=BE-=D0=BF=D0=BE=D0=BF=D1=
=83=D0=BB=D1=8F=D1=80=D0=BD=D0=B8=D1=82=D0=B5 =D0=BA=D0=B0=D1=80=D1=82=D0=
=B8 =D0=B7=D0=B0 =D0=BE=D0=B1=D1=8F=D0=B4 - =D1=80=D0=B0=D0=B1=D0=BE=D1=82=
=D0=BE=D0=B4=D0=B0=D1=82=D0=B5=D0=BB=D1=8F=D1=82 =D0=B7=D0=B0=D1=80=D0=B5=
=D0=B6=D0=B4=D0=B0 =D0=BA=D0=B0=D1=80=D1=82=D0=B0=D1=82=D0=B0 =D1=81 =D0=BE=
=D0=BF=D1=80=D0=B5=D0=B4=D0=B5=D0=BB=D0=B5=D0=BD=D0=B0 =D1=81=D1=83=D0=BC=
=D0=B0, =D0=B0 =D1=81=D0=BB=D1=83=D0=B6=D0=B8=D1=82=D0=B5=D0=BB=D1=8F=D1=82=
 =D0=BC=D0=BE=D0=B6=D0=B5 =D0=B4=D0=B0 =D1=8F =D0=B8=D0=B7=D0=BF=D0=BE=D0=
=BB=D0=B7=D0=B2=D0=B0 =D0=B2=D1=8A=D0=B2 =D0=B2=D1=81=D1=8F=D0=BA=D0=BE =D0=
=B7=D0=B0=D0=B2=D0=B5=D0=B4=D0=B5=D0=BD=D0=B8=D0=B5 =D0=B7=D0=B0 =D1=85=D1=
=80=D0=B0=D0=BD=D0=B5=D0=BD=D0=B5, =D0=BA=D0=B0=D0=BA=D1=82=D0=BE =D0=B8 =
=D0=BE=D0=BD=D0=BB=D0=B0=D0=B9=D0=BD =D0=B7=D0=B0 =D1=85=D1=80=D0=B0=D0=BD=
=D0=B0 =D0=BF=D0=BE =D1=81=D0=B2=D0=BE=D0=B5 =D0=B6=D0=B5=D0=BB=D0=B0=D0=BD=
=D0=B8=D0=B5.

=D0=A9=D0=B5 =D1=81=D0=B5 =D1=80=D0=B0=D0=B4=D0=B2=D0=B0=D0=BC =D0=B4=D0=B0=
 =D0=92=D0=B8 =D0=BF=D1=80=D0=B5=D0=B4=D1=81=D1=82=D0=B0=D0=B2=D1=8F =D0=B2=
=D1=8A=D0=B7=D0=BC=D0=BE=D0=B6=D0=BD=D0=BE=D1=81=D1=82=D0=B8=D1=82=D0=B5 =
=D0=BD=D0=B0 =D0=BA=D0=B0=D1=80=D1=82=D0=B0=D1=82=D0=B0 =E2=80=93 =D0=BC=D0=
=BE=D0=B3=D0=B0 =D0=BB=D0=B8 =D0=B4=D0=B0 =D0=92=D0=B8 =D1=81=D0=B5 =D0=BE=
=D0=B1=D0=B0=D0=B4=D1=8F, =D0=B7=D0=B0 =D0=B4=D0=B0 =D0=BE=D0=B1=D1=81=D1=
=8A=D0=B4=D0=B8=D0=BC =D0=B2 =D0=B4=D0=B5=D1=82=D0=B0=D0=B9=D0=BB=D0=B8?


=D0=A0=D0=B0=D0=B4=D0=BE=D1=81=D0=BB=D0=B0=D0=B2 =D0=94=D0=BE=D0=B1=D1=80=
=D0=B5=D0=B2
Head of HR Benefit Team
www.lunchkarty.eu 
