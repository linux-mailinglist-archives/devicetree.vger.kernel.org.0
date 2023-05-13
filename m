Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3930C701552
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 10:51:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232564AbjEMIvK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 04:51:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbjEMIvJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 04:51:09 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CA6646BC
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 01:51:09 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-ba6fffc5524so2638885276.3
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 01:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683967868; x=1686559868;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zYlqmqzmZQIzuckqyml+D+cUQfB/LAmhyfGQVjeCZAE=;
        b=fBy+bVnvXyp5nt8dyaQa1jrqetVUWB6vS+JWPi6U05DWuPSOv6YJRfIzrtScKI9mFe
         9KNEpILByCMXsb17ExcJN1alDSdWGRlvgn2aN+SEXwuVVQBgR62UrQABIU3bPaV0NtC9
         1JNvW09ZGCVHtFraTsABaWZ5AAZW9FNtjhjwmVTCZGcUJobXLpaA5k9ErrQ4oj75cjiS
         cagOk3qb4zTImtQxPqqTszxAdbfDwBK+QAMt6qnfmy4sxD8GL/a5HaWOzEjYqd9i+UYp
         LVk1UKixKwGgZU43prON8Ide4O7eIEPOnKeUKmpYbFv+J6EUylYPKHhgBOnw51HLd9hX
         CKmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683967868; x=1686559868;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zYlqmqzmZQIzuckqyml+D+cUQfB/LAmhyfGQVjeCZAE=;
        b=BRq98ucn3FFGtTOICXn3fzyuUDwlLQqGVS6Bs0S+kGuOHfG9OfYX6d0ASf87ECvINF
         zCzzhkZPBvyI4I4uT6t1hXpe+JPlMQbDjDD3D6AzNv79auQMqU5ACnim/omtit/J652R
         Bpbcq8ytvMC9bJGVlQGDsDEJPBSppLuhWZJSpCk/Oz8PbYdPWa9DqpxM+H3VVETFn6mV
         /nR9RK/BXSm/24Sx4OzNsa9VpNFZBMBeKwjZtlmnxCmRXk4g/cCwd3kGlWm0fIrxrSyT
         WdihVjvkqxa7qOfkdxOBjTCXCKl9e8lN1ul8V2+wiby+96/E6L4MHD6p0uMnlqyVe0M2
         Brdg==
X-Gm-Message-State: AC+VfDz0AzwRzafPGbQQXLiK5JroIKaOR2NyxLtRDPkxUcUl9TlyZq3J
        2rodTycgPKMyvTlwK960dqhvbiNeKo/S8T2Pzls=
X-Google-Smtp-Source: ACHHUZ5W4oCdZWCodKLBGuHs3eW6tibA6PljsnqVLBW6NyjAalKzIPRFDNITfzjQGStBqSrM86Pjz5jbDIDSti1HxWk=
X-Received: by 2002:a05:6902:70d:b0:ba7:50d4:d914 with SMTP id
 k13-20020a056902070d00b00ba750d4d914mr1838206ybt.5.1683967868148; Sat, 13 May
 2023 01:51:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:52a0:b0:2f2:90f8:f42c with HTTP; Sat, 13 May 2023
 01:51:07 -0700 (PDT)
Reply-To: ninacoulibaly03@hotmail.com
From:   nina coulibaly <nina.coulibaly011@gmail.com>
Date:   Sat, 13 May 2023 01:51:07 -0700
Message-ID: <CAJe7QkqpkKY_YvcNdU7_wvCnYkpkU=vUn7jK3VmJusO7SEc6TQ@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear,

Please grant me permission to share a very crucial discussion with
you. I am looking forward to hearing from you at your earliest
convenience.

Mrs. Nina Coulibaly
