Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3B42B239A6
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 16:16:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390498AbfETOPM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 10:15:12 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:45422 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732112AbfETOPM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 10:15:12 -0400
Received: by mail-lf1-f67.google.com with SMTP id n22so10413949lfe.12
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 07:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Kx/yDCCQeU2zSUDnAgFXJPUZkTY1cxoc8n3EZ4sTOjE=;
        b=EoxUvv0mIQcNhvjP+Qu+GqfrXzw0d8cOaZVGQzsmsxub9Y7STNcWepuuTahEzm1miN
         fkU4XPKgsEVcL/9rSkavL8X6llQAcq/D4dJ6PONAMmSoU58y7Sy7zHHK20A1v2ipDW7V
         DckwV5XoFQPDbMCogGwK7kFUqw5ppEBvI6U7FN3wHEmJ2XVwdPRtqxZ3JydWajBvK58U
         dgbw+gmSDQQwD5KFCnN7atwuyM1Gqm9B5GKXuSGytz8PhevwyCu2s7zWgIjgetiIqccL
         gdFbwWP4QJ9owqQg0VwP4D4GyymfP989R2g31IRvXUYIik52vbOg4hOrVdD7lg9fb1l7
         JrDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Kx/yDCCQeU2zSUDnAgFXJPUZkTY1cxoc8n3EZ4sTOjE=;
        b=Yirg+g6fIbdhRV889XOQF2t2zpxVecYMBcb3oA5F0yak6KB8QHdBUKMmQ/SyWgrTdB
         9YetCgEyhZjLQGEFDOKty3ZTEqOf2uQu9qSCrt0ecUxjQNnByUoZslLVA7EawRThEb85
         auQeUKfsZznzp4EjJ/9NiqLMa+WHJjvqX5Y7MpEVhmHGHHjIKVF01eOVfA1+xAxVq2cF
         TPaa/sXZdoeqax9HsqeKhsglprtt9uFZOADHAoWAGfyMEBhCkg+WZxJz3SsYpiBQ83K3
         OeRx4uwuJ4NPvu1DOsIpRvoynxPs9TBAaqLTDVBICPjZc3MqfDsiZG3ppd7rDAwflkTJ
         ONWg==
X-Gm-Message-State: APjAAAUF03UPhSvNqZ1T1WyXKXQ2JGL6aqow+LYYAWXO7aSrOSFN1p8S
        qmV3Zjb9vKZNXkWLgjUShStG4Go/Xz3X8mHvZio=
X-Google-Smtp-Source: APXvYqwj2ceWM4YhBGOmRZ5pwdB4eeUEm451Mh2+mQCIK/u8TVo9Vx194481PuU6lljVZ2NujjW+Y1mSVpW26MDyGzk=
X-Received: by 2002:ac2:5317:: with SMTP id c23mr12114501lfh.115.1558361710485;
 Mon, 20 May 2019 07:15:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190219002706.20077-1-festevam@gmail.com> <20190423110336.GB23448@ulmo>
In-Reply-To: <20190423110336.GB23448@ulmo>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Mon, 20 May 2019 11:15:05 -0300
Message-ID: <CAOMZO5C4YKcUGJ9wDJHQE04278Cr6ujYnYwPs-yhCyKumbruqg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: Add vendor prefix for VXT Ltd
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        DRI mailing list <dri-devel@lists.freedesktop.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Otavio Salvador <otavio.salvador@ossystems.com.br>,
        John Weber <john.weber@technexion.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 23, 2019 at 8:03 AM Thierry Reding <thierry.reding@gmail.com> wrote:
>
> On Mon, Feb 18, 2019 at 09:27:04PM -0300, Fabio Estevam wrote:
> > VXT Ltd is a manufacturer of projected capacitive touch panel
> > and display solutions: http://www.vxt.com.tw/
> >
> > Reviewed-by: Otavio Salvador <otavio@ossystems.com.br>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Fabio Estevam <festevam@gmail.com>
> > ---
> > Changes since v1:
> > - None
> >
> >  Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
> >  1 file changed, 1 insertion(+)
>
> Applied all three patches, thanks.

I don't see any of these patches applied in linux-next nor 5.2-rc1.

What is the issue here?
