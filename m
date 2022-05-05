Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31DAE51C2B5
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 16:35:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237143AbiEEOje (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 10:39:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232677AbiEEOjd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 10:39:33 -0400
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F025D51E6D
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 07:35:53 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id v59so7929883ybi.12
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 07:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=NRsKFGIDkGHr/C8V+t8DnhNZU5FADxmt1ukPKfs0+qI=;
        b=PyOSxf7suRB2FGASqh0waJ26+p8YyZPXBkCnXMXOZYpiNTjNFYz7hCA/Cj8xo3BFhj
         QPi7WUEX/fpaoxn+5lIuGUEowhSO3/zBQpJPXFjYf4ni7+Zp/pRjF86QXZ24bmkCvv6v
         lKEBqKkoLdQwI2DLQp8ha+TdpS8C0/cKyy0sDkxgAOA1CwzIaSuLpS3jJRYSI7i4sehQ
         tISleLDWgog3wtxFtTPb38Stoc9QHqbZ0Yocn89COiKWi9nGdugG27dQu6JWJudT9M2V
         5B1TjL65yF0gQKALWSvco1HUPXR5ePVSwNBtZdvaZZHgr7aVGakJP9E+I2ubEuOKbOs5
         R60w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=NRsKFGIDkGHr/C8V+t8DnhNZU5FADxmt1ukPKfs0+qI=;
        b=GrlRvDmOtEap5MJBbmXidrUJEmpMf4BqH+WXZdOJ5UEEs1+jQ/3m9byuC4oPx/Ueba
         McJpgvqQgnPYQROAS2tdIwEBVyvcHmsQYeRs1djeDlbdvMcBHQbE5/zPLyZTV1wRXyAB
         VzmpGnhZVVx8xlqnsTsRmxmLYmZir7naCMZOndtZjGpEzt4lWdicVWTZ47xQPbuPS2zA
         /m/UpfUvPBSih4HXHz51XBlyTONvHqcGG6nIU1RtxoFJgq31xNEpiFjTvKIH8ckolEE5
         HI1dVTIU8xECFKRZpZB93yDNhnzp8d0yBeIz0FS0YEN0S76z9M6v4xhDMA4sPaPRvlJq
         N4Pw==
X-Gm-Message-State: AOAM532CxY/rLOmKeh9qU+rwNIQ6bkh4cscFkxoMvufIylEXDOzY/+WA
        bsbC8GJ7+ZSLrVHOM6JiDPVPcKRN9KOJbA0Ert8=
X-Google-Smtp-Source: ABdhPJzsdJKNhazfGaSZ67j9hCpd87oATRAXDlhHAcHG9cyqerxP6knoYsJROLmFcXJdFf/NZtyvTNXHa0GTFRc2dmk=
X-Received: by 2002:a05:6902:1009:b0:649:70c3:319e with SMTP id
 w9-20020a056902100900b0064970c3319emr16035092ybt.388.1651761353282; Thu, 05
 May 2022 07:35:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7110:110e:b0:179:4b65:1543 with HTTP; Thu, 5 May 2022
 07:35:52 -0700 (PDT)
Reply-To: sgtkaylam28@gmail.com
From:   Sgt Kayla <tagbamanguilebe@gmail.com>
Date:   Thu, 5 May 2022 08:35:52 -0600
Message-ID: <CA+3Heoipv_VV803ASyfhJw2QR+5PoyH8ydwSX8DCf=4UvpFZcQ@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.5 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
=C3=9Cdv=C3=B6zlettel,
K=C3=A9rem, megkapta az el=C5=91z=C5=91 =C3=BCzenetem? =C3=8Drj vissza
