Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 276554102EE
	for <lists+devicetree@lfdr.de>; Sat, 18 Sep 2021 04:16:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239236AbhIRCSK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Sep 2021 22:18:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238942AbhIRCSK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Sep 2021 22:18:10 -0400
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44AD4C061574
        for <devicetree@vger.kernel.org>; Fri, 17 Sep 2021 19:16:47 -0700 (PDT)
Received: by mail-il1-x12c.google.com with SMTP id h29so12295695ila.2
        for <devicetree@vger.kernel.org>; Fri, 17 Sep 2021 19:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=K7wQ0o4+0+N6K8uTNDIjAnd7BQeGhXDT1oOTokZhfWA=;
        b=Ar0GSwscbBwFxwlVKIp4/S7yKgl4Qy6yRtw6ZsyhrUCn/7cbvnXDxtqETgN8mOPcRv
         AENTFOQF2rbcWTzZfPV0ks5EtMVWNwCzAxHbj+3O6QumV2Sj55UODNg4FA2pNaTczJuF
         uOSxh0L7yLt/sgbF2xKdc301RPWqWTgGwY44jUPkmIVj5RMvZt3mojU/CAmXNb7Xh3Au
         JG5Eit2wg6e4lSHm+vNDGBMQ75PNed0CGI4DsvVRxGuuo7UtslkngjzFEE3kH87jgu2R
         cUOub8wzopIRu35A6RZ9zCYIl/fhKL5PYDTyPOE6OgrDg2DOSmapZ5kl7Ko1ToL3WFj4
         wh4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=K7wQ0o4+0+N6K8uTNDIjAnd7BQeGhXDT1oOTokZhfWA=;
        b=ghNvccpzRFnKkseb86K5AomdCEEtfRD2c7IJ3pAlODpjzvWHGH3BMG6ZrO9S3bk0b/
         xuJF3M2RVR2CFiMn8BFtMNOaDu+HS8Ww64shHniD/+h8qkOv/Ocx5eaNwSNlsqBBTBjz
         u1WlL4vmbv8VSjIJPtAUr/lv0ZZV1fgJ/WKjXWLSYZ3ugdqDH0MHFxCHvpOxOKK2JDgb
         wWYpAH0nMaXcRpeC4pKOAkr4oSER4o8ast/2P85YGciJBC5tnahJl7o/WSmn9K7fL2HU
         Z1qkHHDTSvqrK7n361LU4OJ8y+cGVLHJQ5LRYHcLW2/EBtwUXequufg/Q1w8rGgrqs+2
         7pTA==
X-Gm-Message-State: AOAM531nwc1Tl5u6IMlvw4ACQ/w2oGajlr068TXyYClr51hqLlmgb9yq
        i5xHVrpM7/qAuuzlxGltIurBirqf9ge7SS92NJc=
X-Google-Smtp-Source: ABdhPJzuiiZ0cJ7aX3WB4++vQ8Wt373X7Ba7Fwje77mLohqxgXcg7pAncdRUqNqn4tH6UsOzXOtjeSKt5o8ZGKoGUIk=
X-Received: by 2002:a05:6e02:cc5:: with SMTP id c5mr10069983ilj.110.1631931406629;
 Fri, 17 Sep 2021 19:16:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:2c41:0:0:0:0 with HTTP; Fri, 17 Sep 2021 19:16:46
 -0700 (PDT)
Reply-To: charles_jackson86@aol.com
From:   "Charles W. Jackson Jr" <diandrawalker1980@gmail.com>
Date:   Fri, 17 Sep 2021 19:16:46 -0700
Message-ID: <CAEP59rJb4-YTw7sm4pS1oZafHDCh=PDJXdR5vQseHup2AHE5mw@mail.gmail.com>
Subject: =?UTF-8?B?NTUuMDAwLDAwIOKCrCBhbiBTaWU=?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
=E2=82=AC55,000.00 Euros has been donated to you by Charles W. Jackson, Ema=
il
to claim your =E2=82=AC55,000.00 now.

Herzlichen Gl=C3=BCckwunsch, die Summe von f=C3=BCnfundf=C3=BCnfzigtausend =
Euro wurde
Ihnen von Charles W. Jackson gespendet, ich habe 344,6 Millionen
US-Dollar beim Powerball-Jackpot gewonnen. Dieser Sieg ist ein Segen.
Deshalb habe ich beschlossen, der =C3=96ffentlichkeit etwas zur=C3=BCckzuge=
ben.
Dies bedeutet, dass ich offiziell bekannt geben werde, dass Sie als
einer der Nutznie=C3=9Fer des Wohlt=C3=A4tigkeitsheims von Charles W Jackso=
n Jr.
ausgew=C3=A4hlt wurden.

  Ich spende (55.000,00 =E2=82=AC) an Sie aufgrund von COVID-19, das so vie=
le
Menschenleben gekostet und einige kaputt gemacht hat. Sorge daf=C3=BCr,
dass jeder die Pflege bekommt, die er braucht. Ich gebe in allen
Counties den gleichen Betrag an verschiedene Personen aus. Ich bete,
dass wir alle aus diesem COVID-19 herauskommen. Senden Sie jetzt eine
E-Mail, um Ihre 55.000,00 =E2=82=AC einzufordern.

Ich, Charles W. Jackson Jr., gratuliere Ihnen.
E-Mail f=C3=BCr weitere Informationen: charles_jackson86@aol.com
