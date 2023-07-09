Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C29E74C12B
	for <lists+devicetree@lfdr.de>; Sun,  9 Jul 2023 07:55:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230151AbjGIFzV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jul 2023 01:55:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232831AbjGIFzS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jul 2023 01:55:18 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14CA2B7
        for <devicetree@vger.kernel.org>; Sat,  8 Jul 2023 22:55:17 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-992f6d7c7fbso428395866b.3
        for <devicetree@vger.kernel.org>; Sat, 08 Jul 2023 22:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688882115; x=1691474115;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
        b=iU8EABnexGoet6KBQgXd+QF+QxRZcbu/SaN/7ljRoS5+msGsEh6DTXlS9235My1oHK
         FiayyZXdvL/urnJPFdZf6Sfvlc6cfJixFX+L9cMTYaW5JhblplGpDFQ7S84nNd4JQ30o
         C/i4dLG4Cpmlc4YIIaPE+d7dq5YM4u2fWWBBHhG+YvsoAV3FUfT8q+VfJcZ04yXIKEp2
         wZ67n6OeTv0F0/rpWun0Q7h3o8MCbg6rDj2+IYWWNfC7cqTgYzcWn3B/6jeSqQ2iKXMA
         xBQiKZQYhKH6pmbGqVBUG55e17cLEBIWniZrHoZhgm6AzJLEN4+aG3hMW4Pxw83kf9HV
         NfhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688882115; x=1691474115;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
        b=EjbMvzTWskbXNTG9/CXmNJJqRHIu18kQbY5bpBRjlG4nZKHaqoRugJVSaS71CtmpXv
         DxYgwstCtvPFifa5xoAWozp5x377WWDkl4lgum7nDRUh9VOCAF5eczS/M3Qlkm/aKvTQ
         PduxxtbIoVSTs1de/hxE3sM0ntraa52lVotsfcmzx6UM153ls9Zl5J0ehWtRxdmwqbzx
         deKIyhbxCYkIzdxoKj5GlFI5yx1qWFH0egGQemBd2bu1fCia9i64GJEL120WmO+mTLs7
         OdU+fGlomZzWnw+gELZMzv5OKMpY9yF16acWq/Q/lfyLyU2vQpZ3tqy1PrIb3k6hJiy5
         0ziQ==
X-Gm-Message-State: ABy/qLb3WIoQDCPSyPX2lf+bU+xRwnLdwq7UsjAnsBwB5fN+AWIaGmRe
        hzTEpPOZhxbin4UoQ3U/JkQTIVuUe2sS9yOVnWM=
X-Google-Smtp-Source: APBJJlERYYYrDoxHXWtF1Ny8WkwysiH8LVQaWMULQQ4ngVPW6By8gMMXGFUFs8gcQZLnWoHvocaXRnWyT95M6SM2pjM=
X-Received: by 2002:a17:906:7487:b0:993:da40:fbff with SMTP id
 e7-20020a170906748700b00993da40fbffmr5093956ejl.0.1688882115297; Sat, 08 Jul
 2023 22:55:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:5d07:b0:98e:25ca:4487 with HTTP; Sat, 8 Jul 2023
 22:55:14 -0700 (PDT)
Reply-To: ninacoulibaly03@hotmail.com
From:   nina coulibaly <cnina.info@gmail.com>
Date:   Sun, 9 Jul 2023 05:55:14 +0000
Message-ID: <CAObaCYvTSQxnQM__HfA8UR2X+zp5NMUuEYheOyXKGZk3Pwsj-Q@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear,

I am interested to invest with you in your country with total trust
and i hope you will give me total support, sincerity and commitment.
Please get back to me as soon as possible so that i can give you my
proposed details of funding and others.

Best Regards.

Mrs Nina Coulibaly
