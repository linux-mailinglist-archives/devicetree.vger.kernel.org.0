Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAFD86745D5
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 23:22:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230247AbjASWWp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 17:22:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229775AbjASWVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 17:21:40 -0500
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A54BFA5CEF
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 14:06:33 -0800 (PST)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-4c131bede4bso47635307b3.5
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 14:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QZgZ/AkMeuHPvehiY/56kfAPBsBLQc/XFm0Jz3ZlkqY=;
        b=apNqrvUZKQmNR/tDENwTLMsjMI17bkUSyKDrmnvzadI4HA0lZ6eCXl/N4jhCXOV8de
         mrC0VN5pHsrUELbbASHNWiOmtar21xCe/IJ6CHFTcM77iiEUrd5ioy6LH9OCNN4WqC7v
         AN/GqddOJUcHN+VcYNBcICe9pgH024jzyb6bT8X3449WdPCooUyuOWEsySZTNFSRs5yS
         RIo3CaFqO+ktURpsLhGh+3KCWopHMS25MH5PSGHXMCGcD6qSnOAVN8W7oF8IZ41IjS6i
         BPvjTJ1WYMGdoZetpCD2FIr326JYshdXMgsHyIZ4ytSfuBRhAEqjKrXz2DWkzdwPbNWj
         D4Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QZgZ/AkMeuHPvehiY/56kfAPBsBLQc/XFm0Jz3ZlkqY=;
        b=hWrIHDnLNWp+A7uL4NFpbxKSh94EOtq5GqTOEDbLckRF+Bvh4oEEcez3d0+S7FP1d4
         wjlo7fz6FIyIdeqAHmxlkxj2qdXbbrmlleeQKekEtwB/ShQRhWQvMrjmXOXxe3tGMFd7
         bsnoLF6FWs/l03aHYipiMoc+Bt70n8bDp/gMnEC8JYSvDqf7NhYt+zscFhWM1tPyC3Xu
         Wv9SpnEziOUIsdUKNbIIcMp3EPHxQAw/OrpEkgnX2eHZa1fC/ECNbnPgM6+nfR9AqQLj
         Y6DT7MU2P9tvSGuw6XGGBmQZckPWqZgY8Y/P+Uq14ynAOgnChoMgAnY0DXTelocbpS6Y
         9Y+w==
X-Gm-Message-State: AFqh2kogrIyYXxkfDIffrVxMSrRKz0/SinwbkwfHy+11AwgSVjRb+lSC
        l/64Mh9xGHmnOZq2ltbd7H1jUZPVWhMI1oh4n7s=
X-Google-Smtp-Source: AMrXdXusnq4iWoU0BqOyEffLjWuzkRfgUXH7zzJ7i9xiXjxWwG2aGLTEeMz7xCue+5HuULrbn2WyBKfg2ZYaKWwRDyE=
X-Received: by 2002:a81:174e:0:b0:3dd:bcc2:e359 with SMTP id
 75-20020a81174e000000b003ddbcc2e359mr1464943ywx.341.1674165992800; Thu, 19
 Jan 2023 14:06:32 -0800 (PST)
MIME-Version: 1.0
From:   Amelia Lucas <datalistsdask@gmail.com>
Date:   Fri, 20 Jan 2023 03:36:08 +0530
Message-ID: <CADvfT5ZswvKeqgbjxB=QPeJzBic5oEhBjSuRGT4_1jrjXEkrSw@mail.gmail.com>
Subject: RE: ISC West- 2023 Attendees Email List
To:     Amelia Lucas <datalistsdask@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=2.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FILL_THIS_FORM,
        FILL_THIS_FORM_LONG,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I hope you're doing great and staying healthy!

Would you be interested in acquiring ISC West Attendees Data List 2023?

List contains: Company Name, Contact Name, First Name, Middle Name,
Last Name, Title, Address, Street, City, Zip code, State, Country,
Telephone, Email address and more,

No of Contacts: - 35,376
Cost: $ 1,726

Interested? Email me back; I would love to provide more information on the list.

Kind Regards,
Amelia Lucas
Marketing Coordinator
