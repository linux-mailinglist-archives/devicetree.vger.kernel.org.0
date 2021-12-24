Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 730A147F092
	for <lists+devicetree@lfdr.de>; Fri, 24 Dec 2021 19:26:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344204AbhLXS0n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Dec 2021 13:26:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343993AbhLXS0m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Dec 2021 13:26:42 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 647E0C061401
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 10:26:42 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id v11so18806021wrw.10
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 10:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:from:mime-version:content-transfer-encoding
         :content-description:subject:to:date:reply-to;
        bh=UtoF0r4yG8U/T8UOLxn8dacSd49m7zi2Qvhr7fGOaoo=;
        b=SP4VbDJndK1vfr9lN+sw04mkEsCI37k3Id8GoUSQ/+mgXB3vQ1UIHuYhN5MWbgh0x2
         PNiFS4lQ1fqtONMLCO1+25K/d0ZEcEEszoEeFMo0o6qCxu/a09UoUEDu9iaaq0hApxY3
         jwrvTe3ubBuBXukrwmYbLaUpHC7QOvu20XbyoX+pxW58JpCf60r6cjNV1SkAvTJ1DtmP
         sfxcMmklTpmukaljrGxhFOE1CDOFANLagEP8IYP5nfeCYlpXwdajOY9HA2KatXL4X6hR
         ltZE3voYFi9iefwHiNylMCDdXidL2H9btFV3O0CeDof7pg92ecjb97VjWrBELLLW2v1X
         x2hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:from:mime-version
         :content-transfer-encoding:content-description:subject:to:date
         :reply-to;
        bh=UtoF0r4yG8U/T8UOLxn8dacSd49m7zi2Qvhr7fGOaoo=;
        b=8FwVh129xW05R3N3BvQflNM68abikRY9rR6oL1iu0W1yJMT4yMvT2m10vnD/S+RGcd
         JCzzvm690OuOMRB7ClSJcsGREWKcZVwQY8bEvEkPFj43tXrwbYP+IckZ0TLq3z331b7i
         v/oyJMGfvLc8P9PgWx1fDI22plnTOJKzlhGpD1RiYKpWKbm+xOCWrlK8VMuBVmRxF0I5
         Mq/kiXzNizZrMtu1fSM6s1V7uTMNTlC5uISOJu25zxnf8i28vE3gZEPMwfOxakYW3Z4Y
         Osc5Vd0qXXCqUszGpZsApmxxxb2OQCPqww0KueLuPjz8W0/LaieWQyqtEUy3p4VzMY3c
         PlNg==
X-Gm-Message-State: AOAM530+QU+elO44wtnVQ+XcfOwXfSjQQnRiQx6cyNeY6wVJ4WD4XOoe
        lxdsANtdbsCYkME1Aux47qY=
X-Google-Smtp-Source: ABdhPJzy7zIQGEr7wEc9uFC+GUsQYu+MW3TcHaOPFGnP5Ue8zkXGOLdo9F9TcR05heBU69iy/DwWmQ==
X-Received: by 2002:adf:f68a:: with SMTP id v10mr5406946wrp.212.1640370400492;
        Fri, 24 Dec 2021 10:26:40 -0800 (PST)
Received: from [192.168.9.102] ([197.211.59.108])
        by smtp.gmail.com with ESMTPSA id g18sm6640056wmq.5.2021.12.24.10.26.36
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 24 Dec 2021 10:26:40 -0800 (PST)
Message-ID: <61c610e0.1c69fb81.68a1.decd@mx.google.com>
From:   Margaret Leung KO May-yee <iniforeal@gmail.com>
X-Google-Original-From: Margaret Leung KO May-yee
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: =?utf-8?q?Gesch=C3=A4ftsvorschlag?=
To:     Recipients <Margaret@vger.kernel.org>
Date:   Fri, 24 Dec 2021 19:26:32 +0100
Reply-To: la67737777@gmail.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bin Frau Margaret Leung Ich habe einen Gesch=E4ftsvorschlag f=FCr Sie, erre=
ichen Sie mich unter: la67737777@gmail.com

Margaret Leung
Managing Director of Chong Hing Bank
