Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18F32689C48
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 15:56:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232411AbjBCO4D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 09:56:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232300AbjBCO4C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 09:56:02 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17C8345F68
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 06:56:01 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id k8-20020a05600c1c8800b003dc57ea0dfeso6214369wms.0
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 06:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GE8LRefBbCr+vfDK+OAPRXSUgs+NOR142JeKY5u24zc=;
        b=gVLHbXSFArNyVySbKLYtIAbS7wOVw2/uF/7sFj1V2kQyD+OBs0IMZz6moOQLkH8p0r
         zuwe9faHu/8YamWSB5HU9WLJQ9uoTOqd96AjLwUffqwKAr0EKRNfb/Mq6XIkpMqEpa5C
         kUJGoC+v/lRH4cZv6btzkNVIvI2zcq8xl/PBLMSSXxk8dk7+VczpQNIZtQGSezjkcnwo
         PQ0zfatYfyrm5cdMBns4US5evzsSW+cFbSnW9jEFuXdJ4XNHz69G4XtIvQQttOfELFuX
         EVuWH65V1X9CMGuQEpKMM2T4+BgH6heHlnLQ34e1KBngPH8LyWNVvhfTMA3nv4FpsV4m
         8qjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GE8LRefBbCr+vfDK+OAPRXSUgs+NOR142JeKY5u24zc=;
        b=NIY9YihIj79FGPNUiXodvUSj1YhlIFNr7Fa0licABPlpVsY6qL3CqfhNn0zTgARbOf
         jd2I0jUTBwi8s9FLUzWSZuNoUN+idephWvegjSMHG947Vb7FRkF0LMAg2Jlw0FbtAXj2
         hyknGoSJAB+QcVScKCOFUsGXC2Fx+K4d4e2setnOStLsUrEGNRqnHimJVnIhJ9n97K88
         rJLQ5/j+MzTzlRoLckIwTD8NoPuUKEEHKP7licCch5IVmRt7rfOn4gvny9ZZ5LB/G/me
         odYlshCMoAH/HqYfZkRcsoHusBr4WW5w/y7wY/LMIR1EU7uZXE5DbA6xvRCypoiOz5NW
         N2sg==
X-Gm-Message-State: AO0yUKXMXH15T0notP8N0kNxCE5ItOH+06c8cOZDEwefJ9ti2kLDM8QA
        AHscl/qDjOWZD+GZS+8Lt9WLx0ubCpNwA9SK4ok=
X-Google-Smtp-Source: AK7set8eM/FKZMeOZp5dEOwzN74dSpKypZJhDF906hgMPRd8mfG+Hg3Sg2xPhWjL9YFq34trlg5irNBxFCwrH/5B/cg=
X-Received: by 2002:a05:600c:5569:b0:3df:e1d9:8914 with SMTP id
 ja9-20020a05600c556900b003dfe1d98914mr341691wmb.189.1675436159398; Fri, 03
 Feb 2023 06:55:59 -0800 (PST)
MIME-Version: 1.0
Sender: dareadja5@gmail.com
Received: by 2002:a05:6020:4710:b0:259:ad88:21bb with HTTP; Fri, 3 Feb 2023
 06:55:58 -0800 (PST)
From:   Kayla Manthey <sergeantkayllamanthey@gmail.com>
Date:   Fri, 3 Feb 2023 14:55:58 +0000
X-Google-Sender-Auth: YeauNz1P6sTBHUxFP3WntVqGFL0
Message-ID: <CAE9bZtNgCnc6DJ4cN88CyUew6oLNNkiCuqHnaLRvYJfpCgsmjA@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dia duit a st=C3=B3r, an bhfuair t=C3=BA mo theachtaireacht roimhe seo?, Go
raibh maith agat.
