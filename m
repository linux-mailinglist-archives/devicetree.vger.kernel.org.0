Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47EE3440E06
	for <lists+devicetree@lfdr.de>; Sun, 31 Oct 2021 13:09:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231394AbhJaMLd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Oct 2021 08:11:33 -0400
Received: from mout.kundenserver.de ([217.72.192.75]:34037 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229839AbhJaMLd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Oct 2021 08:11:33 -0400
Received: from localhost.localdomain ([37.4.249.122]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MEFrX-1mXYjU1zXx-00ADxg; Sun, 31 Oct 2021 13:08:33 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Mwesigwa Guma <mguma@redhat.com>,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-staging@lists.linux.dev,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 0/2] dt-bindings: soc: bcm: Convert brcm,bcm2835-vchiq to json-schemas
Date:   Sun, 31 Oct 2021 13:08:04 +0100
Message-Id: <1635682086-3200-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:eqjFY6C7Np2lLLbNby1RAONQKssAEFOeH6WmUp9aERNlBYhm+tD
 RZeL5GXZ2V9vCNSo9KV+zvQcdkP3uW6tGi6NEnzJx51cfHUc5Br0cyWl8U8VEbb0XmxLy88
 BEF9f+6y452DV6grbEwEDqzB93Qg4xoVB/MGtnEw7c3+EQj2Gtl20fEo0FMpJHMf5yiQcUl
 jmffULX94O5rIOxqWkXjg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TsuFm19u64Y=:jvDq0J7+z8p9iTuK/ViI8p
 3KUS388uiwHZ8PaNWxixBujLhwYK36x29xV0m9HtRdaf+FpaCGfJeak0e//q1yBH/8QfXF8Ph
 GtiV/K72gZKkc54p/v+tgwua/JPv0IuU35W0omX30Rj5+/0IyUO6fA1HK/wn4/ZwgyRj+nG6c
 R5X+e9j8s90vzPn1+Q0pIDHw8Wybs1YjKP4aMlXvkiSg1J6I9d4TOKwIS7pbIHNG5pgaQ7sGT
 GIuDbB6iDiYNnJA6oLE/dqhzXCrMvYfQby7o19SMQX8Og+L1fKEhuft6YksZAfa/mTVjyBNEA
 txaRvD6eDeq2cvXNe7/5StMsrr59/G7tKgEnhp5QrIe4YwKphXEIPKQYbPbc4VVtJ+rlAGf1Y
 P7thY1d8+gb1TFCrkL5abjkDCCgQVM1YVEHk4cN+N9sRKwfwdpqWraqEaHAg8CKnysc0ZYzip
 moYtRMLP7Q5VyP+No8RBFc0YOqSawYyueajEMtbHchqAozvbrK733HTFRiASh7dK6ZDDjgEP5
 S5e7j4fPaGswYVmBCKI9m0gdVzDranG57rLjI0jqsi3r7+QQEUelhBb0hE6BlmExNqVmSW607
 Jic2YpfqN1w24lj1kEVsC3kv8qRmckT1TxBTpK+oSd+bALpR8Kzc90lEqJL3i7GtQRYJI+n/0
 5Pzrb2sEFjucRkBlM/7sRssRjENAZmFs1dFty8nUpJT5aRPN9dOB6hMoITnbXURM4ZuPOvlrZ
 sOsN5c6JdkqTPsTr
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series converts the VCHIQ bindings to YAML format.

Changes in V2:
- drop some unnecessary points in the binding as suggested by Rob Herring

Stefan Wahren (2):
  ARM: dts: bcm283x: Drop fallback compatible for vchiq
  dt-bindings: soc: bcm: Convert brcm,bcm2835-vchiq to json-schema

 .../bindings/soc/bcm/brcm,bcm2835-vchiq.txt        | 17 --------
 .../bindings/soc/bcm/brcm,bcm2835-vchiq.yaml       | 45 ++++++++++++++++++++++
 arch/arm/boot/dts/bcm2836-rpi.dtsi                 |  2 +-
 3 files changed, 46 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.txt
 create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml

-- 
2.7.4

