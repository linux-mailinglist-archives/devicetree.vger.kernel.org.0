Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B8AD69E4FC
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 17:43:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234117AbjBUQn5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 11:43:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233461AbjBUQn4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 11:43:56 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA6E086AE
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 08:43:21 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id f13so19115429edz.6
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 08:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PpEmpYa7NtKgPsFlP0Y6MM1AQQfm9C0TmFOoa/imtIg=;
        b=PuiqbfcAXb8ybC6bJCg+wkSVtoMafoqhZ02cRb/YbMf1Ag+ULqesAg5KX9kQavfXJz
         i2J/6EHcSuSOBgP2nu1rXCCQkcHAyP4vYGEoH9HBCxok2mmDMZ/I6/N43n0H4wLT8dN2
         Ol8R+wwqOXsbgwNetsCRo0ycosQBnfYopaJc5wOcPQrUmqMXoHiq3fhv0xd7MIKUauDY
         OeZXR0NvcFJ99Ox4EhLUK1jPKXLV/FV4Z5EzH8ifWDss/4v7DGZ64QHsLod5fC1zmfMe
         AtVDapAUrCiUKOJrPtY4E+eMv/TvMKpm+BYApWhGE41jUjkYewmNlRAtZcKLaGCzMfrX
         oSmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PpEmpYa7NtKgPsFlP0Y6MM1AQQfm9C0TmFOoa/imtIg=;
        b=E5cUHCgi9xCLnappeVkuT6zJwwSwMqHRlLbMmuQv6+tfZI2Mgug8G4vP0boUcxVKoB
         CWx1qTjawmluJsPS9W4IUxKp3bpYM+Fi2KR1uG/8tPxNbqZxOzioIJzY6ooBeDrLd19A
         KXXW/Y8lhU3qCRa8tMDP9sIzKDVVmqttRNZLb9GD8cFb/Dx25NlbISESn2Uv7u/VuTTi
         EGhXioBj5yTBRM0lFZflpAcW32DE7C3u2uaq7Hz2pLDvm6OUo6J8Ze134umRV3wFj+WK
         qMHwHr3PbZUfz4aLn4x1k9TnYXn3oP4heTuVEAxruxcVSniw83tXawRjLQtmt08aRwo9
         5h0g==
X-Gm-Message-State: AO0yUKXIofpUoSwNQT6/Ot6Hmmmk9BRG9LeNiTqIjY2m5VPCuouzppdS
        28pX8EuaCnFTS9vvykvIMhs8wXnLAdpC13D5AJI=
X-Google-Smtp-Source: AK7set9SXVnVH5YJGNxJ5TzWBLeukR48wks3zegqt78CM301pa+bRD7bcntIn75rciHJv9J/KQSh9xa+VWoo7ZNhBn0=
X-Received: by 2002:a17:906:db04:b0:88d:ba79:4317 with SMTP id
 xj4-20020a170906db0400b0088dba794317mr6686853ejb.7.1676997797926; Tue, 21 Feb
 2023 08:43:17 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6f02:c84d:b0:46:2ccb:4b0a with HTTP; Tue, 21 Feb 2023
 08:43:17 -0800 (PST)
Reply-To: Advocate@tptlegalfirm.com
From:   Larry Aaron Riteman <lotamiri2016@gmail.com>
Date:   Tue, 21 Feb 2023 16:43:17 +0000
Message-ID: <CALPYr+ujS4AE1EEzkMO6NUHJQV_HU+m0m9E2FgAU5J_nGNpbbQ@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=3.1 required=5.0 tests=BAYES_95,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hola.

Este es mi segundo mensaje para usted con respecto a la herencia de su
difunto pariente. Por favor, p=C3=B3ngase en contacto conmigo a trav=C3=A9s=
 de
mi correo electr=C3=B3nico lo antes posible, para obtener m=C3=A1s detalles=
.

Saludos,

larry
