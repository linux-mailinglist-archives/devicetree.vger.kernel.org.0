Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 11AD92121C
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 04:39:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726874AbfEQCjK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 22:39:10 -0400
Received: from mail.kernel.org ([198.145.29.99]:49782 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726757AbfEQCjK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 May 2019 22:39:10 -0400
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0B06B20868
        for <devicetree@vger.kernel.org>; Fri, 17 May 2019 02:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558060749;
        bh=1I3YDHH3jLyXZDhwFrnS+qToUeRAmuFuLnAJqjRcAC0=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=wsA6uUs8+kLhM5WZiHA2epsnGV12oUfz3RNpgcFBw14BgQ4Qr4gk46LaDiA/8mZbq
         1k+XMB/hLUu8xR9BSeKZkp9i6y1r1ZJjWgaZfaZz39V55Ga/N8fRBgJp9z4v9SjKbr
         rNreiWB40vItVyZ/oD/WiQXh6VFOQ/FqHS3BUm+I=
Received: by mail-qt1-f181.google.com with SMTP id m32so6463575qtf.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 19:39:09 -0700 (PDT)
X-Gm-Message-State: APjAAAWxIMN6cRI+i0CUdoTjb5439z1DiRp3wvTxknZznmtz1VfJTeSG
        bof8SJ45OlmWqVfRX0Iam0GTt6JJxFf/xjOVtQ==
X-Google-Smtp-Source: APXvYqxfkBcJJV+k4YhPLqOMGHNRB1pml6w7PKX746J/EqgFTzh8zJw36RSYd7wDFhnTGhrChd1CeHL5fojbJndqaOc=
X-Received: by 2002:ac8:3884:: with SMTP id f4mr46866537qtc.300.1558060748294;
 Thu, 16 May 2019 19:39:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190416100645.21689-1-m.felsch@pengutronix.de>
 <20190416100645.21689-2-m.felsch@pengutronix.de> <20190423122612.GN23448@ulmo>
In-Reply-To: <20190423122612.GN23448@ulmo>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 16 May 2019 21:38:57 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK5jKza61=KOmHCU9SjSsZf-jkstwDZYBr4V-JOa0iSsw@mail.gmail.com>
Message-ID: <CAL_JsqK5jKza61=KOmHCU9SjSsZf-jkstwDZYBr4V-JOa0iSsw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: add vendor prefix for Evervision Electronics
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Marco Felsch <m.felsch@pengutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 23, 2019 at 7:26 AM Thierry Reding <thierry.reding@gmail.com> wrote:
>
> On Tue, Apr 16, 2019 at 12:06:43PM +0200, Marco Felsch wrote:
> > Evervision Electronics is a panel manufacturer from Taipei.
> > http://www.evervisionlcd.com/index.php?lang=en
> >
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
> >  1 file changed, 1 insertion(+)
>
> Applied, thanks.

I've converted this file to json-schema as of v5.2-rc1. See commit
8122de54602e. Applied, but doesn't seem to be in linux-next?

Rob
