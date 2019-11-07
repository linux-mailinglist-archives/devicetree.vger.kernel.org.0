Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A2E48F32DE
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2019 16:21:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388860AbfKGPVm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Nov 2019 10:21:42 -0500
Received: from mail-yb1-f193.google.com ([209.85.219.193]:44561 "EHLO
        mail-yb1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729981AbfKGPVl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Nov 2019 10:21:41 -0500
Received: by mail-yb1-f193.google.com with SMTP id g38so1049477ybe.11
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2019 07:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=softbankrobotics.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=HJLa0gPMAUv5bPhTtGaJLnlnj68hKkWBcQTQp2Y8E34=;
        b=B+ofl552YPgYG6agLUogYSqjMLA2umxOSGn21yV1uEwT31g7O/XQa+bfA7zal3lIlY
         n9FXKNbKV2UT5TdYkLKYcZGqkawb6fbGuxNB33XRqxyHnMdeSGvV1SKbkTwxOM29YHdK
         CTrk65dnI2YI5M4ulWsWC41tW6TfgkvudMBFZV5zKvTuWt1b90gCuBZhce45pu1S6RSs
         eJ4hxSJDrze95oS+eMpi8ZNIl7HKN76svCna85rwnt3IK9gDHoK/o5xm7E3YXvvjqKfz
         zEfyMTwyNPUxJf3CRAuhXBm+RFlTF3JObOTVrzUSSy0OtEK3Fh5b6UnIiz4+n3DZYdru
         9LLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=HJLa0gPMAUv5bPhTtGaJLnlnj68hKkWBcQTQp2Y8E34=;
        b=MYjGLWGK9Ba2sWGZUXFOHzPTA4X9WmXJ72j7YTStR6W5LAcm/r68WYT+2NeHeeeYsQ
         Z/68bCO1B0CyERUdL358g/xb+SKWHflpKpL9utK9tEpUdeqqJvpAw1JRkm6Y8pl/cPsU
         x4b2/lOtUwkESssC1mO06gSkUVOvXu3hOkxdZdiBEy650v29vWXIRJw6MXoZIn7Q2+ur
         jWM7SURmZJTlXXYGHHOESMBN42LdY+xZi43otYogwup9eMCL8/6IBWuYxOzZt4WTCJbp
         FmhSJm7TZsTWVcdOKPs4pUI3oc1Bdi+amB8RwljqqB55vVCCM64PqRhOCazOHZOGbR8Y
         HADg==
X-Gm-Message-State: APjAAAUNO/FaxLJDnzAk1tECRF0bcPZdbiGfha1EOBDo8P3pBdWhkcRS
        jv0+nnmBY0QMwZIPH5muTjFXlBuTQkEJ+7MNBXvkv3dGlf0HBdSeFxQ+5ULHqvhOOeCUYCWC5+l
        S0hTeru50ta5yldoWEHPTRQ9hYpI5
X-Google-Smtp-Source: APXvYqzRuP0KRS6kNgXL+k/rx599gZ4zi3AP+E1yvYWTX39dSFoKRwBgmZ5zlQmRjqF3lwYHFQD1X1VHI+OdjPHCIg4=
X-Received: by 2002:a25:3b56:: with SMTP id i83mr3914294yba.496.1573140099285;
 Thu, 07 Nov 2019 07:21:39 -0800 (PST)
MIME-Version: 1.0
References: <20191107001642.1127561-1-bjorn.andersson@linaro.org>
In-Reply-To: <20191107001642.1127561-1-bjorn.andersson@linaro.org>
From:   Julien Massot <jmassot@softbankrobotics.com>
Date:   Thu, 7 Nov 2019 16:21:28 +0100
Message-ID: <CADGp=QcwM8MhkRCjKz0wwHuz5vZGdfHOn0qYp4g_TBjHWzY6CA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] PCI: qcom: Add support for SDM845 PCIe
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bjorn,

On Thu, Nov 7, 2019 at 1:16 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> This adds support necessary for the two PCIe controllers found in Qualcom=
m
> SDM845.

Thanks a lot the gen 3 PCIE works on my 845 platform.
Tested-by: Julien Massot <jmassot@softbankrobotics.com>

--=20


*This email and any attachment thereto are confidential and intended=20
solely for the use of the individual or entity to whom they are addressed.

If you are not the intended recipient, please be advised that disclosing,=
=20
copying, distributing or taking any action in reliance on the contents of=
=20
this email is strictly prohibited. In such case, please immediately advise=
=20
the sender, and delete all copies and attachment from your system.
This=20
email shall not be construed and is not tantamount to an offer, an=20
acceptance of offer, or an agreement by SoftBank Robotics Europe on any=20
discussion or contractual document whatsoever. No employee or agent is=20
authorized to represent or bind SoftBank Robotics Europe to third parties=
=20
by email, or act on behalf of SoftBank Robotics Europe by email, without=20
express written confirmation by SoftBank Robotics Europe=E2=80=99 duly auth=
orized=20
representatives.
*



*Ce message =C3=A9lectronique et =C3=A9ventuelles pi=C3=A8ces=20
jointes sont confidentiels, et exclusivement destin=C3=A9s =C3=A0 la person=
ne ou=20
l'entit=C3=A9 =C3=A0 qui ils sont adress=C3=A9s.
Si vous n'=C3=AAtes pas le destinataire vis=C3=A9,=20
vous =C3=AAtes pri=C3=A9 de ne pas divulguer, copier, distribuer ou prendre=
 toute=20
d=C3=A9cision sur la foi de ce message =C3=A9lectronique. Merci d'en aviser=
=20
imm=C3=A9diatement l'exp=C3=A9diteur et de supprimer toutes les copies et =
=C3=A9ventuelles=20
pi=C3=A8ces jointes de votre syst=C3=A8me.
Ce message =C3=A9lectronique n'=C3=A9quivaut pas =C3=A0=20
une offre, =C3=A0 une acceptation d=E2=80=99offre, ou =C3=A0 un accord de S=
oftBank Robotics=20
Europe sur toute discussion ou document contractuel quel qu=E2=80=99il soit=
, et ne=20
peut =C3=AAtre interpr=C3=A9t=C3=A9 comme tel. Aucun employ=C3=A9 ou agent =
de SoftBank Robotics=20
Europe n'est autoris=C3=A9 =C3=A0 repr=C3=A9senter ou =C3=A0 engager la soc=
i=C3=A9t=C3=A9 par email, ou =C3=A0=20
agir au nom et pour le compte de la soci=C3=A9t=C3=A9 par email, sans qu=E2=
=80=99une=20
confirmation =C3=A9crite soit donn=C3=A9e par le repr=C3=A9sentant l=C3=A9g=
al de SoftBank=20
Robotics Europe ou par toute autre personne ayant re=C3=A7u d=C3=A9l=C3=A9g=
ation de=20
pouvoir appropri=C3=A9e.
*

**
