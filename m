Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4F16B36032
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2019 17:19:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728120AbfFEPT3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 11:19:29 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:41842 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728089AbfFEPT3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 11:19:29 -0400
Received: by mail-lj1-f195.google.com with SMTP id s21so12869171lji.8
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2019 08:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oh8iBnN6xnapbhKDR5hgUz4ocKAFRKRkmc7+6AZZ2vU=;
        b=lcnDMa2z0CdrTuK4532rXgGmd3U0if2QJoKC6eImks/AHjcY0rjbO91/CUATfj9W6Y
         hKo9lMwu7znUEU1XH2AoMoYzcikUhLZ8GhtjcskSacOrcUnYsr00dIZYfAPJAri4Hofb
         iR0Xej38Qv5A8AVGTx+T8QVa4aJaeTVrmqRftzv5hGmVXdLGyHKT36rHqpRot9S0WW4j
         9QW0zCOhqxEkST1KeEz6PxBNLGoiCvlhEyIc3Gc4glIQUXjhy57KVxy1XANRnIJcrEYK
         a5CSDDSkcOjB0Yc1nASZUL7Ov9LSSKD/5ii+PEi19WqfEiOhj5sYcFvaVciOy9pbTzEW
         xe6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oh8iBnN6xnapbhKDR5hgUz4ocKAFRKRkmc7+6AZZ2vU=;
        b=K4yTlQnk6VxrcV9WLRshLW/u4XeLQQznplRRSrXFtdsqzK/rN5EVhAlEcKMzGGGhhE
         YxAQnliujEZvn4aNvN7b1Rp2uaTfqVHCI4DnLExGGXwx8jwHR0n1xLwCi8eVs8lrhFhg
         wg/5oSzBMI5ESMAGDEk5L+jiMLGADkvwXTUQal+uLRaq3OTVScC6ZJPJAuNRyH35lzWk
         B0zb3Ra1YR445WI0GtcFhc5Nzc0rIqmEvw513QHZKj0T0uNOb+L6QyOwqDVCEMfGpgtO
         NA4zYq9ncCfLSaRvh7/58tr1Oieg2oourPut6jlUFBcxmuh/rAWVpRFLVarYcPVT+JUb
         XHUA==
X-Gm-Message-State: APjAAAVwm2wAHdsVYR4OJvwkaO5LEulMz/CZegPEr8Rp5nbrDQCGHWW9
        szc/6TZwJMOnBlfGc77cbOQPl+QM5kA+HP3bluI=
X-Google-Smtp-Source: APXvYqyRiWBeQUwiPzQbeh0SlUIO04VG/hGpexFsfnKbqe0w8nSYP6KXLcZDZmhtzLOB48bmMihMnrOH956aZ5ANr5I=
X-Received: by 2002:a2e:3e14:: with SMTP id l20mr21804708lja.40.1559747966917;
 Wed, 05 Jun 2019 08:19:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190601070718.26971-1-pbrobinson@gmail.com> <20190601070718.26971-2-pbrobinson@gmail.com>
In-Reply-To: <20190601070718.26971-2-pbrobinson@gmail.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 5 Jun 2019 12:19:18 -0300
Message-ID: <CAOMZO5B3dedXPyGgwWpdDL5ccC0TQuN=+UKBOW4Emv1_xwbZJw@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm: imx6sx: udoo: Use the correct style for SPDX
 License Identifier
To:     Peter Robinson <pbrobinson@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jun 1, 2019 at 4:07 AM Peter Robinson <pbrobinson@gmail.com> wrote:
>
> Use the SPDX License Identifier for GPL-2.0+ OR X11
>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

Nit: the Subject could be consistent with the other patches in the series:

ARM: dts: imx6sx-udoo: Use the correct...
