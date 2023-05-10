Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0D0F6FD5A6
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 06:59:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235700AbjEJE7X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 00:59:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235642AbjEJE7W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 00:59:22 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DAE21FE7
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 21:59:20 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6ab0a942f46so1849490a34.2
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 21:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683694759; x=1686286759;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hCVSG7q46K/MnVTrWNddrrim86+nwZvgN2GD+/MceXo=;
        b=kG6jJ34gkB/9to6+W5uYwKN8lI1lmXTgKeIjViaSH9eecAbTkS3aSBsw2j9RqoIJpt
         vtQugpNXe2g9dyKWz7c9Bv0Y2RzOsgYAPcssUPhs9KaBMATfXx/EjMmqz9NgLc+UeYvx
         o4s/XMoMgj2Jqtww3pCpiRrDMRaI1aXEkDIuQxCeqc7R17ZMqBp2qH9i0wSoIExufFdJ
         Ytm2AVwJvnWERp6omoneK4WZ2hZBQVUocmMW/WnicA2AtzFY6QeY8F1SrEpo4FvShImG
         DSz5oxchTW0BBMpn8XoO9yMf1p39ux//FgXxU/bLqFnziVmD0tXRPAsZDzXJmmrVbhPs
         JU7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683694759; x=1686286759;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hCVSG7q46K/MnVTrWNddrrim86+nwZvgN2GD+/MceXo=;
        b=KEbMo2Xa1GXvBD+rpm3oqiAVrVkL0z5hfTWoOAmUDvj7dnLp9byJ1IiZ/Juay6BMrx
         L8AzzUK4sWEKyIoGtb6fKTIBCoDdR8z1BIQJ2e5988ZQEHx7fy4dfo80+ZwMqeKM0duc
         69Xthp+PIJcXPzFZvJ0aFTsaJ45pCvx9Y2Y1AGdOuLt4higZ7DGUnzbsKsXspUDPNfAT
         hJN/+A8fyFXJRvUKUta2M52K0FwUrRmHG4D5xi5FCu2E8xNUBZdYmoT6jibLXVTOFCPa
         rRdpuYyk9+ZEJbnRDCCX7EYlSADQUPC4PbxEjBu1dJ7Nwmbcn0eI+O0cvHLnQVBQ0SKE
         1r5g==
X-Gm-Message-State: AC+VfDyjstkmykkzIx+Rq9uy1yVinzHYE9w907I/K7u/uvBn8sQwYE3b
        0bTexjKfF7PLimYFBeYhpytc+6aseU4oNJLZU0ffgOj9Csk=
X-Google-Smtp-Source: ACHHUZ5EUcijPXkdUpsDlmfQFMJ+yjl2P+vcGUGbDqBKjhQ/v/m+xA9NmJnAnQEhvyahaTHSvPrr4yHbgPQcNbN1C5c=
X-Received: by 2002:a25:1e8b:0:b0:b8e:cb88:1b69 with SMTP id
 e133-20020a251e8b000000b00b8ecb881b69mr16387760ybe.34.1683694403100; Tue, 09
 May 2023 21:53:23 -0700 (PDT)
MIME-Version: 1.0
Sender: tracymrssmith222@gmail.com
Received: by 2002:a05:7108:4147:b0:2fb:487e:7d69 with HTTP; Tue, 9 May 2023
 21:53:22 -0700 (PDT)
From:   mrsbillchantal <mrsbillchantalhanter@gmail.com>
Date:   Tue, 9 May 2023 21:53:22 -0700
X-Google-Sender-Auth: uW2R2UqUyI7Lunw4B01el4F2Deg
Message-ID: <CA+Mg0AEenxm6YXL_bUO_+uo4VbSzUphX6fMhOo+cWN_czTz6rg@mail.gmail.com>
Subject: Hello Good Day
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=3.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,LOTS_OF_MONEY,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_MONEY,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Good Day, You have been compensated with the sum of 3.8 million
dollars in this united nation.

The payment will be issue into atm visa card and send to you from the
santander bank.

We need your address and your Whatsapp this my email.ID
(mrsbillchantalhanter@gmail.com ) contact  me

Thanks my

mrsbillchantalhanter
